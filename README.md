# dg pack for AWS

Kinds for drawing AWS architecture diagrams with [dg](https://github.com/nvcnvn/dg): 301 services,
465 resources and 15 groups, 781 kinds in all, in AWS's own categories. Not made or endorsed by
AWS. This build holds no icons: services and resources are rounded boxes, groups plain outlines. See
[NOTICE](NOTICE).

`example/` draws a three-tier web application across two Availability Zones.

## Install

```sh
dg pack add aws
```

Kinds take the prefix `aws-`:

```hcl
node "web" {
  kind   = "aws-ec2-instance"
  parent = node.private-a
  label  = "Application server"
}
```

| Kinds | What they draw |
|---|---|
| `aws-service` | an unnamed service; the base of every service icon |
| `aws-resource` | an unnamed resource; the base of every resource icon |
| `aws-boundary` | a dashed group of your own |
| `aws-region`, `aws-account`, `aws-vpc`, `aws-availability-zone`, `aws-public-subnet`, `aws-private-subnet`, `aws-security-group`, `aws-auto-scaling-group`, `aws-cloud`, `aws-cloud-logo` and the rest of `Groups` | AWS's groups: they hold children |
| `aws-s3`, `aws-ec2`, `aws-lambda`, ... | services |
| `aws-s3-bucket`, `aws-ec2-instance`, `aws-vpc-nat-gateway`, `aws-alb-load-balancer`, ... | resources |

`dg vocabulary` lists them all, and the editor's palette filters on the name and the category. A
short name is the name AWS gives, without `AWS` or `Amazon`, and with the acronym people use:
`s3`, `sqs`, `sns`, `ses`, `ecs`, `eks`, `ecr`, `ebs`, `efs`, `iam`, `kms`, `elb`, `msk`, `mwaa`,
`dms`, `cdk`, `cli`. Load balancers hold both forms people type: `elb-load-balancing`,
`alb-load-balancer`, `nlb-load-balancer`, `gwlb-load-balancer`, `clb-load-balancer`. `cloud` and
`cloud-logo` are both plain outlines here.

AWS's deck also shows Elastic Beanstalk, IoT Greengrass and Step Functions groups; use `aws-boundary`
for those.

## Icons

gen.py adds the icons from [AWS's download](https://aws.amazon.com/architecture/icons/) for anyone
who has read the terms in NOTICE. Every kind name stays the same.

## Regenerate

Download the icon package into a new, empty directory, unpack it, then:

```sh
python3 -I gen.py <unpacked download> --no-icons   # then commit
python3 -I check.py --update                # writes the golden from HEAD; look at it, then commit
python3 -I check.py                         # needs dg and Chrome; prints ok
git tag vX.Y.Z
```

A kind's name is the API of this pack, so it never changes once tagged. It comes from the service's
and resource's names, never from a size or a date. When AWS renames an icon, add its new file name
to `ALIASES` in `gen.py` with the old kind name; a name that collides stops the generator.
