#!/usr/bin/env python3
"""Checks this pack the way a user gets it, and draws what the visual review looks at.

    python3 check.py                # needs a clean commit; compares the example with its golden, twice
    python3 check.py --update       # writes example/main.svg.golden from HEAD
    python3 check.py --sheet <dir>  # writes example.png and one sheet-<category>.png per category

Set DG to use a dg that is not on the PATH. The script is the same file in every pack.
"""
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

REPO = Path(__file__).resolve().parent
NAME = REPO.name
EXAMPLE = REPO / "example"
GOLDEN = EXAMPLE / "main.svg.golden"
DG = os.environ.get("DG", "dg")
SHEET_COLUMNS = 8


def run(*cmd: str | Path, cwd: Path = REPO) -> str:
    done = subprocess.run([str(c) for c in cmd], cwd=cwd, capture_output=True, text=True)
    if done.returncode != 0:
        sys.exit(f"check: {' '.join(str(c) for c in cmd)}\n{done.stdout}{done.stderr}")
    return done.stdout + done.stderr


def check_repository() -> str:
    dirty = [l for l in run("git", "status", "--porcelain").splitlines() if not l[3:].startswith("example/main.svg.golden")]
    if dirty:
        sys.exit("check: commit first, since dg pack add reads the commit, not the files:\n" + "\n".join(dirty))
    stray = [f for f in run("git", "ls-files", "*.svg").splitlines() if not f.startswith(("icons/", "frames/"))]
    if stray:
        sys.exit(f"check: these would reach every user's project: {stray}")
    if (EXAMPLE / "packs").exists() or re.search(r"^\s*pack\s+\"", (EXAMPLE / "dg.hcl").read_text(), re.M):
        sys.exit("check: example/ must hold no pack: this script installs it")
    return run("git", "rev-parse", "HEAD").strip()


def install(project: Path, commit: str) -> None:
    run(DG, "pack", "add", f"file://{REPO}@{commit}", "-C", project)


def check_project(project: Path) -> None:
    out = [l for l in run(DG, "check", "-C", project).splitlines() if l.strip() and ": info: " not in l]
    if out:
        sys.exit("check: dg check is not clean:\n" + "\n".join(out))


def draw_example(commit: str) -> bytes:
    with tempfile.TemporaryDirectory() as tmp:
        project = Path(tmp) / "example"
        shutil.copytree(EXAMPLE, project, ignore=shutil.ignore_patterns("*.golden"))
        install(project, commit)
        check_project(project)
        return subprocess.run([DG, "export", "-C", str(project)], capture_output=True, check=True).stdout


def sheet(out: Path, commit: str) -> None:
    out.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory() as tmp:
        project = Path(tmp) / "example"
        shutil.copytree(EXAMPLE, project, ignore=shutil.ignore_patterns("*.golden"))
        install(project, commit)
        run(DG, "export", "-C", project, "--format", "png", "--scale", "2", "--out", out / "example.png")

        project = Path(tmp) / "sheet"
        project.mkdir()
        (project / "dg.hcl").write_text(f'project "sheet" {{}}\n')
        install(project, commit)
        kinds = [k for k in json.loads(run(DG, "vocabulary", "-C", project))["kinds"] if k.get("pack") == NAME]
        categories = sorted({k.get("category", "") for k in kinds})
        model, views = [], []
        for i, category in enumerate(categories):
            group = f"c{i}"
            model.append(f'node "{group}" {{\n  kind  = "grid-group"\n  label = "{category}"\n}}\n')
            views.append(f'view "{re.sub(r"[^a-z0-9]+", "-", category.lower()).strip("-") or "none"}" {{\n  include = [node.{group}, descendants.{group}]\n}}\n')
            for j, k in enumerate(k for k in kinds if k.get("category", "") == category):
                short = k["name"].removeprefix(NAME + "-")
                model.append(f'node "{group}-{j}" {{\n  kind   = "{k["name"]}"\n  parent = node.{group}\n  label  = "{short}"\n}}\n')
        (project / "model.hcl").write_text("\n".join(model))
        (project / "views.hcl").write_text("\n".join(views))
        (project / "style.hcl").write_text(f'style "grid-group" {{\n  columns = {SHEET_COLUMNS}\n  gap     = 20\n}}\n')
        check_project(project)
        shots = Path(tmp) / "shots"
        run(DG, "export", "-C", project, "--all", "--format", "png", "--out", shots)
        for png in sorted(shots.iterdir()):
            shutil.copy(png, out / f"sheet-{png.name}")
    print(f"{len(kinds)} kinds in {len(categories)} categories, pictures in {out}")


def main(args: list[str]) -> None:
    commit = check_repository()
    if args[:1] == ["--sheet"] and len(args) == 2:
        sheet(Path(args[1]), commit)
        return
    if args == ["--update"]:
        GOLDEN.write_bytes(draw_example(commit))
        print(f"wrote {GOLDEN}")
        return
    if args:
        sys.exit(__doc__)
    first, second = draw_example(commit), draw_example(commit)
    if first != second:
        sys.exit("check: two exports of one commit differ")
    if first != GOLDEN.read_bytes():
        sys.exit(f"check: the example does not match {GOLDEN}; look at it, then run --update")
    print(f"ok: {NAME} at {commit[:12]} matches its golden, twice")


if __name__ == "__main__":
    main(sys.argv[1:])
