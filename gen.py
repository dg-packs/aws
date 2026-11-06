#!/usr/bin/env python3
"""Generates spec.hcl, style.hcl, icons/ and frames/ from a vendor's unpacked icon download.

    python3 -I gen.py <download dir>              # with the vendor's art
    python3 -I gen.py <download dir> --no-icons   # kinds and styles only (spec 4.7)

Regenerating from the same download gives identical bytes. Only the block under VENDOR changes
from one pack to another.
"""
import re
import shutil
import sys
import xml.etree.ElementTree as ET
from dataclasses import dataclass
from pathlib import Path, PurePosixPath

# VENDOR ---------------------------------------------------------------------------------------


@dataclass(frozen=True)
class Source:
    glob: str  # relative to the download
    base: str  # "service" or "resource"
    category_part: int  # which part of the path relative to the download names the category


@dataclass(frozen=True)
class Boundary:
    icon: str | None  # a glob relative to the download, or None for a group the set gives no icon
    category: str
    stroke: str
    fill: str = "none"
    dashed: bool = False


SOURCES = [
    Source("Architecture-Service-Icons_*/Arch_*/64/Arch_*_64.svg", "service", 1),
    Source("Resource-Icons_*/Res_*/Res_*_48.svg", "resource", 1),
    Source("Resource-Icons_*/Res_General-Icons/Res_48_Light/Res_*_48_Light.svg", "resource", 1),
]
# Files left out by their path: the dark variant of an icon, and the copy of an icon AWS files twice.
SKIP_FILES = re.compile(r"_Dark_64\.svg$|Arch_Compute/64/Arch_AWS-Compute-Optimizer|Arch_Analytics/64/Arch_Amazon-Kinesis-Video")
# A service's name as AWS spells it after the vendor is gone -> the name people use for it. Applies
# to the service and, as a prefix, to its resources.
ACRONYMS = {
    "Cloud-Development-Kit": "CDK",
    "Command-Line-Interface": "CLI",
    "Database-Migration-Service": "DMS",
    "Elastic-Block-Store": "EBS",
    "Elastic-Container-Registry": "ECR",
    "Elastic-Container-Service": "ECS",
    "Elastic-File-System": "EFS",
    "Elastic-Kubernetes-Service": "EKS",
    "Elastic-Load-Balancing": "ELB",
    "Identity-Access-Management": "IAM",
    "Identity-and-Access-Management": "IAM",
    "Key-Management-Service": "KMS",
    "Managed-Streaming-for-Apache-Kafka": "MSK",
    "Managed-Workflows-for-Apache-Airflow": "MWAA",
    "Simple-Email-Service": "SES",
    "Simple-Notification-Service": "SNS",
    "Simple-Queue-Service": "SQS",
    "Simple-Storage-Service": "S3",
    "Simple-Storage-Service-Glacier": "S3-Glacier",
}
# Taken from a file's stem, in order. The stem is <service> or <service>_<resource>.
STRIP = [
    (r"^(Arch|Res)_", ""),
    (r"(_Light)?_(48|64)(_Light)?$", ""),
    (r"(?<![A-Za-z0-9])(AWS|Amazon)-", ""),
    (r"-(on|at)-AWS$", ""),
    (r"^(" + "|".join(sorted(ACRONYMS, key=len, reverse=True)) + r")(?=_|$)", lambda m: ACRONYMS[m[1]]),
    (r"^([^_]+)_\1(?=-|$)", r"\1"),  # Amazon-EMR_EMR-Engine is emr-engine, not emr-emr-engine
]
# The stem after STRIP as a slug, or a file's name when two share a stem -> kind.
ALIASES: dict[str, str] = {
    "Res_Amazon-Aurora_Amazon-RDS-Instance-Aternate_48.svg": "aurora-rds-instance-alternate",  # AWS's typo
    "Res_Amazon-EC2_Auto-Scaling_48.svg": "ec2-auto-scaling-resource",
    "Res_Amazon-Elastic-Container-Service_CopiIoT-CLI_48.svg": "ecs-copilot-cli",  # AWS's typo
    "Res_Amazon-Redshift_Query-Editor-v2.0_48.svg": "redshift-query-editor",  # a name with no version in it
    "Res_Amazon-Simple-Storage-Service_S3-On-Outposts_48.svg": "s3-on-outposts-resource",
    "Res_AWS-Cloud9_Cloud9_48.svg": "cloud9-resource",
    "Res_AWS-Management-Console_48_Light.svg": "general-management-console",
    "Res_Shield_48_Light.svg": "general-shield",
    "app-mesh-mesh": "mesh",
    "cloudwatch-event-event-based": "cloudwatch-event-based",
    "cloudwatch-event-time-based": "cloudwatch-time-based",
    "dms-database-migration-workflow-or-job": "dms-migration-workflow",
    "elemental-mediaconnect-mediaconnect-gateway": "mediaconnect-gateway",
    "iot-device-defender-iot-device-jobs": "iot-device-jobs",
    "license-manager-license-blending": "license-blending",
    "managed-blockchain-blockchain": "blockchain",
    "opensearch-service-opensearch-dashboards": "opensearch-dashboards",
    "opensearch-service-opensearch-ingestion": "opensearch-ingestion",
    # The palette filters on the name: each holds what people type, the acronym and the words.
    "elb": "elb-load-balancing",
    "elb-application-load-balancer": "alb-load-balancer",
    "elb-classic-load-balancer": "clb-load-balancer",
    "elb-gateway-load-balancer": "gwlb-load-balancer",
    "elb-network-load-balancer": "nlb-load-balancer",
}
SKIP: set[str] = {  # kinds to leave out, by name: an icon a boundary replaces, or a duplicate of another
    "virtual-private-cloud",
    "vpc-virtual-private-cloud-vpc",
}
CATEGORY_STRIP = [r"^(Arch|Res)_"]
CATEGORIES: dict[str, str] = {  # stripped directory name -> title, when the default reads badly
    "Front-End-Web-Mobile": "Front-End Web & Mobile",
    "IoT": "Internet of Things",
    "Management-Governance": "Management Tools",
    "Migration-Modernization": "Migration & Modernization",
    "Networking-Content-Delivery": "Networking & Content Delivery",
    "Security-Identity": "Security & Identity",
}
GROUP = "Architecture-Group-Icons_*/"
BOUNDARIES = {  # colors from the group slide of AWS's deck; the deck fills no group
    "account": Boundary(GROUP + "AWS-Account_32.svg", "Groups", "#E7157B"),
    "auto-scaling-group": Boundary(GROUP + "Auto-Scaling-group_32.svg", "Groups", "#ED7100", dashed=True),
    "availability-zone": Boundary(None, "Groups", "#00A4A6", dashed=True),
    "cloud": Boundary(GROUP + "AWS-Cloud_32.svg", "Groups", "#242F3E"),
    "cloud-logo": Boundary(GROUP + "AWS-Cloud-logo_32.svg", "Groups", "#242F3E"),
    "corporate-data-center": Boundary(GROUP + "Corporate-data-center_32.svg", "Groups", "#7D8998"),
    "ec2-instance-contents": Boundary(GROUP + "EC2-instance-contents_32.svg", "Groups", "#ED7100"),
    "iot-greengrass-deployment": Boundary(GROUP + "AWS-IoT-Greengrass-Deployment_32.svg", "Groups", "#7AA116"),
    "private-subnet": Boundary(GROUP + "Private-subnet_32.svg", "Groups", "#00A4A6"),
    "public-subnet": Boundary(GROUP + "Public-subnet_32.svg", "Groups", "#7AA116"),
    "region": Boundary(GROUP + "Region_32.svg", "Groups", "#00A4A6", dashed=True),
    "security-group": Boundary(None, "Groups", "#DD344C"),
    "server-contents": Boundary(GROUP + "Server-contents_32.svg", "Groups", "#7D8998"),
    "spot-fleet": Boundary(GROUP + "Spot-Fleet_32.svg", "Groups", "#ED7100"),
    "vpc": Boundary(GROUP + "Virtual-private-cloud-VPC_32.svg", "Groups", "#8C4FFF"),
}
# The group icons are named _32 but are 40 by 40, and AWS's deck draws them at 40 and says not to
# resize them. Nine-slice corners are a quarter of the frame and hold the icon. A frame is about as
# wide as a group, so a typical one stretches its sides and its top alike, and the dashes match.
ICON = 40
FRAME = (400, 240)
CORNER_DASH = "6 4"  # dg's own, as on a plain rect
EDGE_DASH = "2 1.5"  # stretched with its slice

# Every pack the same from here ----------------------------------------------------------------

REPO = Path(__file__).resolve().parent
RESERVED = {"all", "node", "kind", "tag", "children", "descendants", "edge_kind", "port", "row", "lift"}
BASES = {"service", "resource", "boundary", "group"}  # own kinds, and the generic kind they extend
SIMPLE_ID = re.compile(r"^[A-Za-z_][A-Za-z0-9_-]*$")
SVG = "{http://www.w3.org/2000/svg}svg"

SPEC_BASES = '''kind "service" {
  category = "General"
}

kind "resource" {
  extends  = "service"
  category = "General"
}

kind "boundary" {
  extends  = "group"
  category = "General"
}
'''

STYLE_BASES = '''style "service" {
  shape     = "image"
  image     = file("icons/service.svg")
  font_size = 14
  padding   = 6
  min_w     = 100
  min_h     = 0
  max_w     = 150
}

style "resource" {
  font_size = 11
  padding   = 4
  min_w     = 70
  max_w     = 120
}

style "boundary" {
  shape        = "rect"
  fill         = "none"
  stroke       = "#5F6368"
  stroke_width = 1.5
  stroke_dash  = [6, 4]
  font_size    = 12
  font_weight  = 700
  padding      = 44
  min_w        = 200
  min_h        = 120
}
'''

STYLE_BASES_NO_ICONS = '''style "service" {
  shape        = "rounded"
  fill         = "#F1F3F4"
  stroke       = "#5F6368"
  stroke_width = 1.5
  font_size    = 14
  padding      = 12
  min_w        = 120
  min_h        = 60
  max_w        = 180
}

style "resource" {
  font_size = 12
  min_w     = 100
  min_h     = 40
}

style "boundary" {
  shape       = "rect"
  fill        = "none"
  stroke      = "#5F6368"
  stroke_dash = [6, 4]
  font_size   = 12
  font_weight = 700
  padding     = 16
  min_w       = 200
  min_h       = 120
}
'''

PLACEHOLDER = (
    '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64"><rect width="64" height="64" rx="4" fill="#5F6368"/>'
    '<path d="M32 14 48 23v18L32 50 16 41V23zM16 23l16 9 16-9M32 32v18" fill="none" stroke="#fff" stroke-width="2.5" stroke-linejoin="round"/></svg>\n'
)


def fail(msg: str) -> None:
    sys.exit(f"gen: {msg}")


def slug(text: str) -> str:
    return re.sub(r"[^a-z0-9]+", "-", text.lower()).strip("-")


def short_name(rel: str) -> str:
    stem = PurePosixPath(rel).stem
    for pattern, replacement in STRIP:
        stem = re.sub(pattern, replacement, stem)
    raw = slug(stem)
    name = ALIASES.get(PurePosixPath(rel).name) or ALIASES.get(raw, raw)
    if not SIMPLE_ID.match(name) or name in RESERVED or name in BASES:
        fail(f"{stem!r} gives the name {name!r}, which cannot be a kind: add it to ALIASES")
    return name


def category_title(directory: str) -> str:
    for pattern in CATEGORY_STRIP:
        directory = re.sub(pattern, "", directory)
    return CATEGORIES.get(directory, re.sub(r"[-_]+", " ", directory).strip())


def checked_svg(path: Path) -> bytes:
    data = path.read_bytes()
    if b"<!ENTITY" in data:
        fail(f"{path}: declares entities, which dg check refuses; count these and read the vendor's terms before altering one")
    try:
        root = ET.fromstring(data)
    except ET.ParseError as e:
        fail(f"{path}: {e}")
    if root.tag != SVG:
        fail(f"{path}: the root is not an svg element in the SVG namespace")
    return data


def write(rel: str, data: bytes) -> None:
    path = REPO / rel
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)


def frame(b: Boundary, art: bytes) -> bytes:
    """Returns a nine-slice picture: the boundary's outline with the icon, unchanged, in its top-left corner."""
    text = re.sub(rb"<\?xml.*?\?>|<!--.*?-->|<!DOCTYPE[^>]*>", b"", art, flags=re.S).decode().strip()
    root = re.match(r"<svg\b[^>]*>", text)
    if not root or "viewBox" not in root[0]:
        fail(f"{b.icon}: a boundary's icon needs a viewBox on its root element")
    attrs = re.sub(r'\s(x|y|width|height)="[^"]*"', "", root[0][4:-1])
    nested = f'<svg x="0" y="0" width="{ICON}" height="{ICON}"{attrs}>' + text[root.end():]
    w, h = FRAME
    qx, qy, fx, fy = w // 4, h // 4, w - w // 4, h - h // 4
    near, right, bottom = 0.75, w - 0.75, h - 0.75
    if b.dashed:
        # Stretching a slice stretches its dashes, so an edge's start at each end of the slice.
        outline = (
            f'<rect width="{w}" height="{h}" fill="{b.fill}"/><g fill="none" stroke="{b.stroke}" stroke-width="1.5">'
            f'<path stroke-dasharray="{CORNER_DASH}" d="M{fx} {near}H{right}V{qy}M{right} {fy}V{bottom}H{fx}M{qx} {bottom}H{near}V{fy}M{near} {ICON}V{qy}M{ICON} {near}H{qx}"/>'
            f'<path stroke-dasharray="{EDGE_DASH}" d="M{qx} {near}H{fx}M{qx} {bottom}H{fx}M{near} {qy}V{fy}M{right} {qy}V{fy}"/></g>'
        )
    else:
        outline = f'<rect x="{near}" y="{near}" width="{w - 1.5}" height="{h - 1.5}" fill="{b.fill}" stroke="{b.stroke}" stroke-width="1.5"/>'
    return f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {w} {h}">{outline}{nested}</svg>\n'.encode()


def kinds(download: Path) -> list[tuple[str, str, str, Path]]:
    """Returns (name, base, category, source file) of every icon the download gives, sorted by name."""
    found: dict[str, tuple[str, str, str, Path]] = {}
    for source in SOURCES:
        for path in sorted(download.glob(source.glob), key=lambda p: p.as_posix()):
            rel = path.relative_to(download).as_posix()
            if SKIP_FILES.search(rel):
                continue
            name = short_name(rel)
            if name in SKIP:
                continue
            if name in found:
                fail(f"{found[name][3]} and {path} both give the name {name!r}: add one to ALIASES")
            found[name] = (name, source.base, category_title(PurePosixPath(rel).parts[source.category_part]), path)
    for name in BOUNDARIES:
        if name in found:
            fail(f"{name!r} is both a boundary and an icon of SOURCES")
    return [found[n] for n in sorted(found)]


def main(argv: list[str]) -> None:
    no_icons = "--no-icons" in argv
    args = [a for a in argv if a != "--no-icons"]
    if len(args) != 1 or not Path(args[0]).is_dir():
        sys.exit(__doc__)
    download = Path(args[0]).resolve()

    entries = kinds(download)
    for d in ("icons", "frames"):
        shutil.rmtree(REPO / d, ignore_errors=True)

    spec = [SPEC_BASES]
    style = [STYLE_BASES_NO_ICONS if no_icons else STYLE_BASES]
    if not no_icons:
        write("icons/service.svg", PLACEHOLDER.encode())

    for name, base, category, path in entries:
        spec.append(f'kind "{name}" {{\n  extends  = "{base}"\n  category = "{category}"\n}}\n')
        if not no_icons:
            rel = f"icons/{slug(category)}/{name}.svg"
            write(rel, checked_svg(path))
            style.append(f'style "{name}" {{\n  image = file("{rel}")\n}}\n')

    for name in sorted(BOUNDARIES):
        b = BOUNDARIES[name]
        spec.append(f'kind "{name}" {{\n  extends  = "boundary"\n  category = "{b.category}"\n}}\n')
        if no_icons or b.icon is None:
            dash = "[6, 4]" if b.dashed else "[]"
            pad = "" if no_icons else "  padding     = 20\n"  # no icon to clear
            style.append(f'style "{name}" {{\n  fill        = "{b.fill}"\n  stroke      = "{b.stroke}"\n  stroke_dash = {dash}\n{pad}}}\n')
            continue
        art = checked_svg(next(iter(sorted(download.glob(b.icon)))))
        rel = f"icons/{slug(b.category)}/{name}.svg"
        write(rel, art)
        write(f"frames/{name}.svg", frame(b, art))
        style.append(f'shape "{name}-frame" {{\n  svg     = file("frames/{name}.svg")\n  stretch = "nine-slice"\n}}\n')
        style.append(f'style "{name}" {{\n  shape = "{name}-frame"\n  image = file("{rel}")\n}}\n')

    write("spec.hcl", "\n".join(spec).encode())
    write("style.hcl", "\n".join(style).encode())
    print(f"{len(entries) + len(BOUNDARIES)} kinds", "without icons" if no_icons else "")


if __name__ == "__main__":
    main(sys.argv[1:])
