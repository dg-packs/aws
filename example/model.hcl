node "users" {
  kind  = "aws-users"
  label = "Customers"
}

node "cloud" {
  kind  = "aws-cloud"
  label = "AWS Cloud"
}

node "dns" {
  kind   = "aws-route-53"
  parent = node.cloud
  label  = "Amazon Route 53"
}

node "cdn" {
  kind   = "aws-cloudfront"
  parent = node.cloud
  label  = "Amazon CloudFront"
}

node "payments" {
  kind  = "external"
  label = "Payment provider"
}

node "region" {
  kind   = "aws-region"
  parent = node.cloud
  label  = "Region: eu-west-1"
}

node "assets" {
  kind   = "aws-s3"
  parent = node.region
  label  = "Amazon Simple Storage Service"
}

node "orders" {
  kind   = "aws-sqs"
  parent = node.region
  label  = "Amazon Simple Queue Service"
}

node "worker" {
  kind   = "aws-lambda"
  parent = node.region
  label  = "AWS Lambda"
}

node "vpc" {
  kind   = "aws-vpc"
  parent = node.region
  label  = "VPC: 10.0.0.0/16"
}

node "igw" {
  kind   = "aws-vpc-internet-gateway"
  parent = node.region
  label  = "Internet gateway"
}

node "az-a" {
  kind   = "aws-availability-zone"
  parent = node.vpc
  label  = "Availability Zone A"
}

node "public-a" {
  kind   = "aws-public-subnet"
  parent = node.az-a
  label  = "Public subnet"
}

node "alb-a" {
  kind   = "aws-alb-load-balancer"
  parent = node.public-a
  label  = "Application Load Balancer"
}

node "nat-a" {
  kind   = "aws-vpc-nat-gateway"
  parent = node.public-a
  label  = "NAT gateway"
}

node "private-a" {
  kind   = "aws-private-subnet"
  parent = node.az-a
  label  = "Private subnet"
}

node "app-a" {
  kind   = "aws-ec2-instance"
  parent = node.private-a
  label  = "Application server"
}

node "cache" {
  kind   = "aws-elasticache"
  parent = node.private-a
  label  = "Amazon ElastiCache primary"
}

node "db" {
  kind   = "aws-aurora"
  parent = node.private-a
  label  = "Amazon Aurora primary"
}

node "az-b" {
  kind   = "aws-availability-zone"
  parent = node.vpc
  label  = "Availability Zone B"
}

node "public-b" {
  kind   = "aws-public-subnet"
  parent = node.az-b
  label  = "Public subnet"
}

node "alb-b" {
  kind   = "aws-alb-load-balancer"
  parent = node.public-b
  label  = "Application Load Balancer"
}

node "nat-b" {
  kind   = "aws-vpc-nat-gateway"
  parent = node.public-b
  label  = "NAT gateway"
}

node "private-b" {
  kind   = "aws-private-subnet"
  parent = node.az-b
  label  = "Private subnet"
}

node "app-b" {
  kind   = "aws-ec2-instance"
  parent = node.private-b
  label  = "Application server"
}

node "cache-b" {
  kind   = "aws-elasticache"
  parent = node.private-b
  label  = "Amazon ElastiCache replica"
}

node "replica" {
  kind   = "aws-aurora"
  parent = node.private-b
  label  = "Amazon Aurora replica"
}

edge "resolve" {
  from  = node.users
  to    = node.dns
  label = "DNS"
}

edge "browse" {
  from  = node.users
  to    = node.cdn
  label = "HTTPS"
}

edge "static" {
  from  = node.cdn
  to    = node.assets
  label = "static assets"
}

edge "dynamic" {
  from = node.cdn
  to   = node.igw
}

edge "enter-a" {
  from = node.igw
  to   = node.alb-a
}

edge "enter-b" {
  from = node.igw
  to   = node.alb-b
}

edge "route-a" {
  from = node.alb-a
  to   = node.app-a
}

edge "route-b" {
  from = node.alb-b
  to   = node.app-b
}

edge "session-a" {
  from = node.app-a
  to   = node.cache
}

edge "session-b" {
  from = node.app-b
  to   = node.cache-b
}

edge "write-a" {
  from = node.app-a
  to   = node.db
}

edge "write-b" {
  from  = node.app-b
  to    = node.db
  label = "writes"
}

edge "read-b" {
  from  = node.app-b
  to    = node.replica
  label = "reads"
}

edge "replicate" {
  from  = node.db
  to    = node.replica
  label = "replication"
}

edge "egress-a" {
  from = node.app-a
  to   = node.nat-a
}

edge "egress-b" {
  from = node.app-b
  to   = node.nat-b
}

edge "out-a" {
  from = node.nat-a
  to   = node.igw
}

edge "out-b" {
  from = node.nat-b
  to   = node.igw
}

edge "enqueue-a" {
  from = node.app-a
  to   = node.orders
}

edge "enqueue-b" {
  from = node.app-b
  to   = node.orders
}

edge "consume" {
  from = node.orders
  to   = node.worker
}

edge "charge" {
  from = node.worker
  to   = node.payments
}
