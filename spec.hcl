kind "service" {
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

kind "activate" {
  extends  = "service"
  category = "Customer Enablement"
}

kind "alb-load-balancer" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "alert" {
  extends  = "resource"
  category = "General Icons"
}

kind "amplify" {
  extends  = "service"
  category = "Front-End Web & Mobile"
}

kind "amplify-studio" {
  extends  = "resource"
  category = "Front-End Web & Mobile"
}

kind "apache-mxnet" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "api-gateway" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "api-gateway-endpoint" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "app-mesh" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "app-mesh-virtual-gateway" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "app-mesh-virtual-node" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "app-mesh-virtual-router" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "app-mesh-virtual-service" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "app-runner" {
  extends  = "service"
  category = "Compute"
}

kind "app-studio" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "appconfig" {
  extends  = "service"
  category = "Management Tools"
}

kind "appfabric" {
  extends  = "service"
  category = "Business Applications"
}

kind "appflow" {
  extends  = "service"
  category = "Application Integration"
}

kind "application-auto-scaling" {
  extends  = "service"
  category = "Management Tools"
}

kind "application-discovery-service" {
  extends  = "service"
  category = "Migration & Modernization"
}

kind "application-discovery-service-agentless-collector" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "application-discovery-service-discovery-agent" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "application-discovery-service-migration-evaluator-collector" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "application-migration-service" {
  extends  = "service"
  category = "Migration & Modernization"
}

kind "application-recovery-controller" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "appsync" {
  extends  = "service"
  category = "Application Integration"
}

kind "artifact" {
  extends  = "service"
  category = "Security & Identity"
}

kind "athena" {
  extends  = "service"
  category = "Analytics"
}

kind "athena-data-source-connectors" {
  extends  = "resource"
  category = "Analytics"
}

kind "audit-manager" {
  extends  = "service"
  category = "Security & Identity"
}

kind "augmented-ai-a2i" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "aurora" {
  extends  = "service"
  category = "Databases"
}

kind "aurora-instance" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-instance-alternate" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-mariadb-instance" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-mariadb-instance-alternate" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-mysql-instance" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-mysql-instance-alternate" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-oracle-instance" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-oracle-instance-alternate" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-piops-instance" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-postgresql-instance" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-postgresql-instance-alternate" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-rds-instance" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-rds-instance-alternate" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-sql-server-instance" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-sql-server-instance-alternate" {
  extends  = "resource"
  category = "Databases"
}

kind "aurora-trusted-language-extensions-for-postgresql" {
  extends  = "resource"
  category = "Databases"
}

kind "authenticated-user" {
  extends  = "resource"
  category = "General Icons"
}

kind "auto-scaling" {
  extends  = "service"
  category = "Management Tools"
}

kind "b2b-data-interchange" {
  extends  = "service"
  category = "Application Integration"
}

kind "backint-agent" {
  extends  = "service"
  category = "Management Tools"
}

kind "backup" {
  extends  = "service"
  category = "Storage"
}

kind "backup-audit-manager" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-compliance-reporting" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-compute" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-database" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-for-cloudformation" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-gateway" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-legal-hold" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-plan" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-recovery-point-objective" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-recovery-time-objective" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-restore" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-storage" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-support-for-fsx-for-netapp-ontap" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-support-for-s3" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-support-for-vmware-workloads" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-vault" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-vault-lock" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-virtual-machine" {
  extends  = "resource"
  category = "Storage"
}

kind "backup-virtual-machine-monitor" {
  extends  = "resource"
  category = "Storage"
}

kind "batch" {
  extends  = "service"
  category = "Compute"
}

kind "bedrock" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "bedrock-agentcore" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "billing-conductor" {
  extends  = "service"
  category = "Cloud Financial Management"
}

kind "blockchain" {
  extends  = "resource"
  category = "Blockchain"
}

kind "bottlerocket" {
  extends  = "service"
  category = "Compute"
}

kind "braket" {
  extends  = "service"
  category = "Quantum Technologies"
}

kind "braket-chandelier" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-chip" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-embedded-simulator" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-managed-simulator" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-noise-simulator" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-qpu" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-simulator" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-simulator-1" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-simulator-2" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-simulator-3" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-simulator-4" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-state-vector" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "braket-tensor-network" {
  extends  = "resource"
  category = "Quantum Technologies"
}

kind "budgets" {
  extends  = "service"
  category = "Cloud Financial Management"
}

kind "camera" {
  extends  = "resource"
  category = "General Icons"
}

kind "cdk" {
  extends  = "service"
  category = "Developer Tools"
}

kind "certificate-manager" {
  extends  = "service"
  category = "Security & Identity"
}

kind "certificate-manager-certificate-authority" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "chat" {
  extends  = "resource"
  category = "General Icons"
}

kind "chatbot" {
  extends  = "service"
  category = "Management Tools"
}

kind "chime" {
  extends  = "service"
  category = "Business Applications"
}

kind "chime-sdk" {
  extends  = "service"
  category = "Business Applications"
}

kind "clb-load-balancer" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "clean-rooms" {
  extends  = "service"
  category = "Analytics"
}

kind "cli" {
  extends  = "service"
  category = "Developer Tools"
}

kind "client" {
  extends  = "resource"
  category = "General Icons"
}

kind "client-vpn" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "cloud-control-api" {
  extends  = "service"
  category = "Developer Tools"
}

kind "cloud-digital-interface" {
  extends  = "resource"
  category = "Media Services"
}

kind "cloud-directory" {
  extends  = "service"
  category = "Security & Identity"
}

kind "cloud-map" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "cloud-map-namespace" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloud-map-resource" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloud-map-service" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloud-wan" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "cloud-wan-core-network-edge" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloud-wan-segment-network" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloud-wan-transit-gateway-route-table-attachment" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloud9" {
  extends  = "service"
  category = "Developer Tools"
}

kind "cloud9-resource" {
  extends  = "resource"
  category = "Developer Tools"
}

kind "cloudformation" {
  extends  = "service"
  category = "Management Tools"
}

kind "cloudformation-change-set" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudformation-stack" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudformation-template" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudfront" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "cloudfront-download-distribution" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloudfront-edge-location" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloudfront-functions" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloudfront-streaming-distribution" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "cloudhsm" {
  extends  = "service"
  category = "Security & Identity"
}

kind "cloudsearch" {
  extends  = "service"
  category = "Analytics"
}

kind "cloudsearch-search-documents" {
  extends  = "resource"
  category = "Analytics"
}

kind "cloudshell" {
  extends  = "service"
  category = "Developer Tools"
}

kind "cloudtrail" {
  extends  = "service"
  category = "Management Tools"
}

kind "cloudtrail-lake" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch" {
  extends  = "service"
  category = "Management Tools"
}

kind "cloudwatch-alarm" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-cross-account-observability" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-data-protection" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-event-based" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-evidently" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-logs" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-metrics-insights" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-rule" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-rum" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-synthetics" {
  extends  = "resource"
  category = "Management Tools"
}

kind "cloudwatch-time-based" {
  extends  = "resource"
  category = "Management Tools"
}

kind "codeartifact" {
  extends  = "service"
  category = "Developer Tools"
}

kind "codebuild" {
  extends  = "service"
  category = "Developer Tools"
}

kind "codecatalyst" {
  extends  = "service"
  category = "Developer Tools"
}

kind "codecommit" {
  extends  = "service"
  category = "Developer Tools"
}

kind "codedeploy" {
  extends  = "service"
  category = "Developer Tools"
}

kind "codeguru" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "codepipeline" {
  extends  = "service"
  category = "Developer Tools"
}

kind "codewhisperer" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "cognito" {
  extends  = "service"
  category = "Security & Identity"
}

kind "cold-storage" {
  extends  = "resource"
  category = "General Icons"
}

kind "comprehend" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "comprehend-medical" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "compute-optimizer" {
  extends  = "service"
  category = "Management Tools"
}

kind "config" {
  extends  = "service"
  category = "Management Tools"
}

kind "connect" {
  extends  = "service"
  category = "Business Applications"
}

kind "console-mobile-application" {
  extends  = "service"
  category = "Management Tools"
}

kind "control-tower" {
  extends  = "service"
  category = "Management Tools"
}

kind "corretto" {
  extends  = "service"
  category = "Developer Tools"
}

kind "cost-and-usage-report" {
  extends  = "service"
  category = "Cloud Financial Management"
}

kind "cost-explorer" {
  extends  = "service"
  category = "Cloud Financial Management"
}

kind "credentials" {
  extends  = "resource"
  category = "General Icons"
}

kind "data-exchange" {
  extends  = "service"
  category = "Analytics"
}

kind "data-exchange-for-apis" {
  extends  = "resource"
  category = "Analytics"
}

kind "data-firehose" {
  extends  = "service"
  category = "Analytics"
}

kind "data-stream" {
  extends  = "resource"
  category = "General Icons"
}

kind "data-table" {
  extends  = "resource"
  category = "General Icons"
}

kind "data-transfer-terminal" {
  extends  = "service"
  category = "Migration & Modernization"
}

kind "database" {
  extends  = "resource"
  category = "General Icons"
}

kind "datasync" {
  extends  = "service"
  category = "Migration & Modernization"
}

kind "datasync-agent" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "datasync-discovery" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "datazone" {
  extends  = "service"
  category = "Analytics"
}

kind "datazone-business-data-catalog" {
  extends  = "resource"
  category = "Analytics"
}

kind "datazone-data-portal" {
  extends  = "resource"
  category = "Analytics"
}

kind "datazone-data-projects" {
  extends  = "resource"
  category = "Analytics"
}

kind "dcv" {
  extends  = "service"
  category = "Compute"
}

kind "deadline-cloud" {
  extends  = "service"
  category = "Media Services"
}

kind "deep-learning-amis" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "deep-learning-containers" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "deepracer" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "detective" {
  extends  = "service"
  category = "Security & Identity"
}

kind "device-farm" {
  extends  = "service"
  category = "Front-End Web & Mobile"
}

kind "devops-agent" {
  extends  = "service"
  category = "Management Tools"
}

kind "devops-guru" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "devops-guru-insights" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "direct-connect" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "direct-connect-gateway" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "directory-service" {
  extends  = "service"
  category = "Security & Identity"
}

kind "directory-service-ad-connector" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "directory-service-managed-microsoft-ad" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "directory-service-simple-ad" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "disk" {
  extends  = "resource"
  category = "General Icons"
}

kind "distro-for-opentelemetry" {
  extends  = "service"
  category = "Management Tools"
}

kind "dms" {
  extends  = "service"
  category = "Databases"
}

kind "dms-migration-workflow" {
  extends  = "resource"
  category = "Databases"
}

kind "document" {
  extends  = "resource"
  category = "General Icons"
}

kind "documentdb" {
  extends  = "service"
  category = "Databases"
}

kind "documentdb-elastic-clusters" {
  extends  = "resource"
  category = "Databases"
}

kind "documents" {
  extends  = "resource"
  category = "General Icons"
}

kind "dynamodb" {
  extends  = "service"
  category = "Databases"
}

kind "dynamodb-accelerator" {
  extends  = "resource"
  category = "Databases"
}

kind "dynamodb-attribute" {
  extends  = "resource"
  category = "Databases"
}

kind "dynamodb-attributes" {
  extends  = "resource"
  category = "Databases"
}

kind "dynamodb-global-secondary-index" {
  extends  = "resource"
  category = "Databases"
}

kind "dynamodb-item" {
  extends  = "resource"
  category = "Databases"
}

kind "dynamodb-items" {
  extends  = "resource"
  category = "Databases"
}

kind "dynamodb-standard-access-table-class" {
  extends  = "resource"
  category = "Databases"
}

kind "dynamodb-standard-infrequent-access-table-class" {
  extends  = "resource"
  category = "Databases"
}

kind "dynamodb-stream" {
  extends  = "resource"
  category = "Databases"
}

kind "dynamodb-table" {
  extends  = "resource"
  category = "Databases"
}

kind "ebs" {
  extends  = "service"
  category = "Storage"
}

kind "ebs-data-lifecycle-manager" {
  extends  = "resource"
  category = "Storage"
}

kind "ebs-multiple-volumes" {
  extends  = "resource"
  category = "Storage"
}

kind "ebs-snapshot" {
  extends  = "resource"
  category = "Storage"
}

kind "ebs-volume" {
  extends  = "resource"
  category = "Storage"
}

kind "ebs-volume-gp3" {
  extends  = "resource"
  category = "Storage"
}

kind "ec2" {
  extends  = "service"
  category = "Compute"
}

kind "ec2-ami" {
  extends  = "resource"
  category = "Compute"
}

kind "ec2-auto-scaling" {
  extends  = "service"
  category = "Compute"
}

kind "ec2-auto-scaling-resource" {
  extends  = "resource"
  category = "Compute"
}

kind "ec2-db-instance" {
  extends  = "resource"
  category = "Compute"
}

kind "ec2-elastic-ip-address" {
  extends  = "resource"
  category = "Compute"
}

kind "ec2-image-builder" {
  extends  = "service"
  category = "Compute"
}

kind "ec2-instance" {
  extends  = "resource"
  category = "Compute"
}

kind "ec2-instance-with-cloudwatch" {
  extends  = "resource"
  category = "Compute"
}

kind "ec2-instances" {
  extends  = "resource"
  category = "Compute"
}

kind "ec2-microservice-extractor-for-net" {
  extends  = "resource"
  category = "Compute"
}

kind "ec2-rescue" {
  extends  = "resource"
  category = "Compute"
}

kind "ec2-spot-instance" {
  extends  = "resource"
  category = "Compute"
}

kind "ecr" {
  extends  = "service"
  category = "Containers"
}

kind "ecr-image" {
  extends  = "resource"
  category = "Containers"
}

kind "ecr-registry" {
  extends  = "resource"
  category = "Containers"
}

kind "ecs" {
  extends  = "service"
  category = "Containers"
}

kind "ecs-anywhere" {
  extends  = "service"
  category = "Containers"
}

kind "ecs-container-1" {
  extends  = "resource"
  category = "Containers"
}

kind "ecs-container-2" {
  extends  = "resource"
  category = "Containers"
}

kind "ecs-container-3" {
  extends  = "resource"
  category = "Containers"
}

kind "ecs-copilot-cli" {
  extends  = "resource"
  category = "Containers"
}

kind "ecs-service" {
  extends  = "resource"
  category = "Containers"
}

kind "ecs-service-connect" {
  extends  = "resource"
  category = "Containers"
}

kind "ecs-task" {
  extends  = "resource"
  category = "Containers"
}

kind "efs" {
  extends  = "service"
  category = "Storage"
}

kind "efs-elastic-throughput" {
  extends  = "resource"
  category = "Storage"
}

kind "efs-file-system" {
  extends  = "resource"
  category = "Storage"
}

kind "efs-intelligent-tiering" {
  extends  = "resource"
  category = "Storage"
}

kind "efs-one-zone" {
  extends  = "resource"
  category = "Storage"
}

kind "efs-one-zone-infrequent-access" {
  extends  = "resource"
  category = "Storage"
}

kind "efs-standard" {
  extends  = "resource"
  category = "Storage"
}

kind "efs-standard-infrequent-access" {
  extends  = "resource"
  category = "Storage"
}

kind "eks" {
  extends  = "service"
  category = "Containers"
}

kind "eks-anywhere" {
  extends  = "service"
  category = "Containers"
}

kind "eks-distro" {
  extends  = "service"
  category = "Containers"
}

kind "eks-on-outposts" {
  extends  = "resource"
  category = "Containers"
}

kind "elastic-beanstalk" {
  extends  = "service"
  category = "Compute"
}

kind "elastic-beanstalk-application" {
  extends  = "resource"
  category = "Compute"
}

kind "elastic-beanstalk-deployment" {
  extends  = "resource"
  category = "Compute"
}

kind "elastic-disaster-recovery" {
  extends  = "service"
  category = "Storage"
}

kind "elastic-fabric-adapter" {
  extends  = "service"
  category = "Compute"
}

kind "elastic-inference" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "elastic-vmware-service" {
  extends  = "service"
  category = "Compute"
}

kind "elasticache" {
  extends  = "service"
  category = "Databases"
}

kind "elasticache-cache-node" {
  extends  = "resource"
  category = "Databases"
}

kind "elasticache-for-memcached" {
  extends  = "resource"
  category = "Databases"
}

kind "elasticache-for-redis" {
  extends  = "resource"
  category = "Databases"
}

kind "elasticache-for-valkey" {
  extends  = "resource"
  category = "Databases"
}

kind "elb-load-balancing" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "elemental-appliances-software" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-conductor" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-delta" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-inference" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "elemental-link" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-live" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-mediaconnect" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-mediaconvert" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-medialive" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-mediapackage" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-mediastore" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-mediatailor" {
  extends  = "service"
  category = "Media Services"
}

kind "elemental-server" {
  extends  = "service"
  category = "Media Services"
}

kind "email" {
  extends  = "resource"
  category = "General Icons"
}

kind "emr" {
  extends  = "service"
  category = "Analytics"
}

kind "emr-cluster" {
  extends  = "resource"
  category = "Analytics"
}

kind "emr-engine" {
  extends  = "resource"
  category = "Analytics"
}

kind "emr-hdfs-cluster" {
  extends  = "resource"
  category = "Analytics"
}

kind "end-user-messaging" {
  extends  = "service"
  category = "Business Applications"
}

kind "entity-resolution" {
  extends  = "service"
  category = "Analytics"
}

kind "eventbridge" {
  extends  = "service"
  category = "Application Integration"
}

kind "eventbridge-custom-event-bus" {
  extends  = "resource"
  category = "Application Integration"
}

kind "eventbridge-default-event-bus" {
  extends  = "resource"
  category = "Application Integration"
}

kind "eventbridge-event" {
  extends  = "resource"
  category = "Application Integration"
}

kind "eventbridge-pipes" {
  extends  = "resource"
  category = "Application Integration"
}

kind "eventbridge-rule" {
  extends  = "resource"
  category = "Application Integration"
}

kind "eventbridge-saas-partner-event" {
  extends  = "resource"
  category = "Application Integration"
}

kind "eventbridge-scheduler" {
  extends  = "resource"
  category = "Application Integration"
}

kind "eventbridge-schema" {
  extends  = "resource"
  category = "Application Integration"
}

kind "eventbridge-schema-registry" {
  extends  = "resource"
  category = "Application Integration"
}

kind "express-workflows" {
  extends  = "service"
  category = "Application Integration"
}

kind "fargate" {
  extends  = "service"
  category = "Containers"
}

kind "fault-injection-service" {
  extends  = "service"
  category = "Developer Tools"
}

kind "file-cache" {
  extends  = "service"
  category = "Storage"
}

kind "file-cache-hybrid-nfs-linked-datasets" {
  extends  = "resource"
  category = "Storage"
}

kind "file-cache-on-premises-nfs-linked-datasets" {
  extends  = "resource"
  category = "Storage"
}

kind "file-cache-s3-linked-datasets" {
  extends  = "resource"
  category = "Storage"
}

kind "finops-agent" {
  extends  = "service"
  category = "Cloud Financial Management"
}

kind "finspace" {
  extends  = "service"
  category = "Analytics"
}

kind "firewall" {
  extends  = "resource"
  category = "General Icons"
}

kind "firewall-manager" {
  extends  = "service"
  category = "Security & Identity"
}

kind "folder" {
  extends  = "resource"
  category = "General Icons"
}

kind "folders" {
  extends  = "resource"
  category = "General Icons"
}

kind "forecast" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "forums" {
  extends  = "resource"
  category = "General Icons"
}

kind "fraud-detector" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "freertos" {
  extends  = "service"
  category = "Internet of Things"
}

kind "fsx" {
  extends  = "service"
  category = "Storage"
}

kind "fsx-for-lustre" {
  extends  = "service"
  category = "Storage"
}

kind "fsx-for-netapp-ontap" {
  extends  = "service"
  category = "Storage"
}

kind "fsx-for-openzfs" {
  extends  = "service"
  category = "Storage"
}

kind "fsx-for-wfs" {
  extends  = "service"
  category = "Storage"
}

kind "gamelift-servers" {
  extends  = "service"
  category = "Games"
}

kind "gamelift-streams" {
  extends  = "service"
  category = "Games"
}

kind "gear" {
  extends  = "resource"
  category = "General Icons"
}

kind "general-management-console" {
  extends  = "resource"
  category = "General Icons"
}

kind "general-shield" {
  extends  = "resource"
  category = "General Icons"
}

kind "generic-application" {
  extends  = "resource"
  category = "General Icons"
}

kind "git-repository" {
  extends  = "resource"
  category = "General Icons"
}

kind "global-accelerator" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "globe" {
  extends  = "resource"
  category = "General Icons"
}

kind "glue" {
  extends  = "service"
  category = "Analytics"
}

kind "glue-crawler" {
  extends  = "resource"
  category = "Analytics"
}

kind "glue-data-catalog" {
  extends  = "resource"
  category = "Analytics"
}

kind "glue-data-quality" {
  extends  = "resource"
  category = "Analytics"
}

kind "glue-databrew" {
  extends  = "service"
  category = "Analytics"
}

kind "glue-for-ray" {
  extends  = "resource"
  category = "Analytics"
}

kind "ground-station" {
  extends  = "service"
  category = "Satellite"
}

kind "guardduty" {
  extends  = "service"
  category = "Security & Identity"
}

kind "gwlb-load-balancer" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "health-dashboard" {
  extends  = "service"
  category = "Management Tools"
}

kind "healthimaging" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "healthlake" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "healthomics" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "healthscribe" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "iam" {
  extends  = "service"
  category = "Security & Identity"
}

kind "iam-access-analyzer" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-add-on" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-data-encryption-key" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-encrypted-data" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-identity-center" {
  extends  = "service"
  category = "Security & Identity"
}

kind "iam-long-term-security-credential" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-mfa-token" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-permissions" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-role" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-roles-anywhere" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-sts" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-sts-alternate" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "iam-temporary-security-credential" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "infrastructure-composer" {
  extends  = "service"
  category = "Developer Tools"
}

kind "inspector" {
  extends  = "service"
  category = "Security & Identity"
}

kind "inspector-agent" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "interactive-video-service" {
  extends  = "service"
  category = "Media Services"
}

kind "interconnect" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "internet" {
  extends  = "resource"
  category = "General Icons"
}

kind "internet-alt1" {
  extends  = "resource"
  category = "General Icons"
}

kind "internet-alt2" {
  extends  = "resource"
  category = "General Icons"
}

kind "iot-action" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-actuator" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-alexa-enabled-device" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-alexa-skill" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-alexa-voice-service" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-certificate" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-core" {
  extends  = "service"
  category = "Internet of Things"
}

kind "iot-core-device-advisor" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-core-device-location" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-desired-state" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-device-defender" {
  extends  = "service"
  category = "Internet of Things"
}

kind "iot-device-gateway" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-device-jobs" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-device-management" {
  extends  = "service"
  category = "Internet of Things"
}

kind "iot-device-management-fleet-hub" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-device-tester" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-echo" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-events" {
  extends  = "service"
  category = "Internet of Things"
}

kind "iot-expresslink" {
  extends  = "service"
  category = "Internet of Things"
}

kind "iot-fire-tv" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-fire-tv-stick" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-fleetwise" {
  extends  = "service"
  category = "Internet of Things"
}

kind "iot-greengrass" {
  extends  = "service"
  category = "Internet of Things"
}

kind "iot-greengrass-artifact" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-component" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-component-machine-learning" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-component-nucleus" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-component-private" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-component-public" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-connector" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-interprocess-communication" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-protocol" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-recipe" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-greengrass-stream-manager" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-hardware-board" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-http-protocol" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-http2-protocol" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-lambda-function" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-lorawan-protocol" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-mqtt-protocol" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-over-air-update" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-policy" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-reported-state" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-rule" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-sailboat" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-sensor" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-servo" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-shadow" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-simulator" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-sitewise" {
  extends  = "service"
  category = "Internet of Things"
}

kind "iot-sitewise-asset" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-sitewise-asset-hierarchy" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-sitewise-asset-model" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-sitewise-asset-properties" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-sitewise-data-streams" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-bank" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-bicycle" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-camera" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-car" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-cart" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-coffee-pot" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-door-lock" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-factory" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-freertos-device" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-generic" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-house" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-humidity-sensor" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-industrial-pc" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-lightbulb" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-medical-emergency" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-plc" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-police-emergency" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-relay" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-stacklight" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-temperature-humidity-sensor" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-temperature-sensor" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-temperature-vibration-sensor" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-thermostat" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-travel" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-utility" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-vibration-sensor" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-thing-windfarm" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-topic" {
  extends  = "resource"
  category = "Internet of Things"
}

kind "iot-twinmaker" {
  extends  = "service"
  category = "Internet of Things"
}

kind "iq" {
  extends  = "service"
  category = "Customer Enablement"
}

kind "json-script" {
  extends  = "resource"
  category = "General Icons"
}

kind "kendra" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "keyspaces" {
  extends  = "service"
  category = "Databases"
}

kind "kinesis" {
  extends  = "service"
  category = "Analytics"
}

kind "kinesis-data-streams" {
  extends  = "service"
  category = "Analytics"
}

kind "kinesis-video-streams" {
  extends  = "service"
  category = "Media Services"
}

kind "kms" {
  extends  = "service"
  category = "Security & Identity"
}

kind "kms-external-key-store" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "lake-formation" {
  extends  = "service"
  category = "Analytics"
}

kind "lake-formation-data-lake" {
  extends  = "resource"
  category = "Analytics"
}

kind "lambda" {
  extends  = "service"
  category = "Compute"
}

kind "lambda-function" {
  extends  = "resource"
  category = "Compute"
}

kind "launch-wizard" {
  extends  = "service"
  category = "Management Tools"
}

kind "lex" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "license-blending" {
  extends  = "resource"
  category = "Management Tools"
}

kind "license-manager" {
  extends  = "service"
  category = "Management Tools"
}

kind "license-manager-application-discovery" {
  extends  = "resource"
  category = "Management Tools"
}

kind "lightsail" {
  extends  = "service"
  category = "Compute"
}

kind "lightsail-for-research" {
  extends  = "service"
  category = "Compute"
}

kind "local-zones" {
  extends  = "service"
  category = "Compute"
}

kind "location-service" {
  extends  = "service"
  category = "Front-End Web & Mobile"
}

kind "location-service-geofence" {
  extends  = "resource"
  category = "Front-End Web & Mobile"
}

kind "location-service-map" {
  extends  = "resource"
  category = "Front-End Web & Mobile"
}

kind "location-service-place" {
  extends  = "resource"
  category = "Front-End Web & Mobile"
}

kind "location-service-routes" {
  extends  = "resource"
  category = "Front-End Web & Mobile"
}

kind "location-service-track" {
  extends  = "resource"
  category = "Front-End Web & Mobile"
}

kind "logs" {
  extends  = "resource"
  category = "General Icons"
}

kind "lookout-for-equipment" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "lookout-for-vision" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "macie" {
  extends  = "service"
  category = "Security & Identity"
}

kind "magnifying-glass" {
  extends  = "resource"
  category = "General Icons"
}

kind "mainframe-modernization" {
  extends  = "service"
  category = "Migration & Modernization"
}

kind "mainframe-modernization-analyzer" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "mainframe-modernization-compiler" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "mainframe-modernization-converter" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "mainframe-modernization-developer" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "mainframe-modernization-runtime" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "managed-blockchain" {
  extends  = "service"
  category = "Blockchain"
}

kind "managed-grafana" {
  extends  = "service"
  category = "Management Tools"
}

kind "managed-service-for-apache-flink" {
  extends  = "service"
  category = "Analytics"
}

kind "managed-service-for-prometheus" {
  extends  = "service"
  category = "Management Tools"
}

kind "managed-services" {
  extends  = "service"
  category = "Customer Enablement"
}

kind "management-console" {
  extends  = "service"
  category = "Management Tools"
}

kind "marketplace" {
  extends  = "service"
  category = "General Icons"
}

kind "mediaconnect-gateway" {
  extends  = "resource"
  category = "Media Services"
}

kind "memorydb" {
  extends  = "service"
  category = "Databases"
}

kind "mesh" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "metrics" {
  extends  = "resource"
  category = "General Icons"
}

kind "migration-evaluator" {
  extends  = "service"
  category = "Migration & Modernization"
}

kind "mobile-client" {
  extends  = "resource"
  category = "General Icons"
}

kind "monitron" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "mq" {
  extends  = "service"
  category = "Application Integration"
}

kind "mq-broker" {
  extends  = "resource"
  category = "Application Integration"
}

kind "msk" {
  extends  = "service"
  category = "Analytics"
}

kind "msk-connect" {
  extends  = "resource"
  category = "Analytics"
}

kind "multimedia" {
  extends  = "resource"
  category = "General Icons"
}

kind "mwaa" {
  extends  = "service"
  category = "Application Integration"
}

kind "neptune" {
  extends  = "service"
  category = "Databases"
}

kind "network-firewall" {
  extends  = "service"
  category = "Security & Identity"
}

kind "network-firewall-endpoints" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "neuron" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "nitro-enclaves" {
  extends  = "service"
  category = "Compute"
}

kind "nlb-load-balancer" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "nova" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "office-building" {
  extends  = "resource"
  category = "General Icons"
}

kind "open-3d-engine" {
  extends  = "service"
  category = "Games"
}

kind "opensearch-dashboards" {
  extends  = "resource"
  category = "Analytics"
}

kind "opensearch-ingestion" {
  extends  = "resource"
  category = "Analytics"
}

kind "opensearch-service" {
  extends  = "service"
  category = "Analytics"
}

kind "opensearch-service-cluster-administrator-node" {
  extends  = "resource"
  category = "Analytics"
}

kind "opensearch-service-data-node" {
  extends  = "resource"
  category = "Analytics"
}

kind "opensearch-service-index" {
  extends  = "resource"
  category = "Analytics"
}

kind "opensearch-service-observability" {
  extends  = "resource"
  category = "Analytics"
}

kind "opensearch-service-traces" {
  extends  = "resource"
  category = "Analytics"
}

kind "opensearch-service-ultrawarm-node" {
  extends  = "resource"
  category = "Analytics"
}

kind "oracle-database" {
  extends  = "service"
  category = "Databases"
}

kind "organizations" {
  extends  = "service"
  category = "Management Tools"
}

kind "organizations-account" {
  extends  = "resource"
  category = "Management Tools"
}

kind "organizations-management-account" {
  extends  = "resource"
  category = "Management Tools"
}

kind "organizations-organizational-unit" {
  extends  = "resource"
  category = "Management Tools"
}

kind "outposts-family" {
  extends  = "service"
  category = "Compute"
}

kind "outposts-rack" {
  extends  = "service"
  category = "Compute"
}

kind "outposts-servers" {
  extends  = "service"
  category = "Compute"
}

kind "panorama" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "parallel-cluster" {
  extends  = "service"
  category = "Compute"
}

kind "parallel-computing-service" {
  extends  = "service"
  category = "Compute"
}

kind "partner-central" {
  extends  = "service"
  category = "Management Tools"
}

kind "payment-cryptography" {
  extends  = "service"
  category = "Security & Identity"
}

kind "personalize" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "pinpoint" {
  extends  = "service"
  category = "Business Applications"
}

kind "pinpoint-apis" {
  extends  = "service"
  category = "Business Applications"
}

kind "pinpoint-journey" {
  extends  = "resource"
  category = "Business Applications"
}

kind "polly" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "private-certificate-authority" {
  extends  = "service"
  category = "Security & Identity"
}

kind "privatelink" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "professional-services" {
  extends  = "service"
  category = "Customer Enablement"
}

kind "programming-language" {
  extends  = "resource"
  category = "General Icons"
}

kind "proton" {
  extends  = "service"
  category = "Management Tools"
}

kind "pytorch" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "q" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "question" {
  extends  = "resource"
  category = "General Icons"
}

kind "quick" {
  extends  = "service"
  category = "Business Applications"
}

kind "rds" {
  extends  = "service"
  category = "Databases"
}

kind "rds-blue-green-deployments" {
  extends  = "resource"
  category = "Databases"
}

kind "rds-multi-az" {
  extends  = "resource"
  category = "Databases"
}

kind "rds-multi-az-db-cluster" {
  extends  = "resource"
  category = "Databases"
}

kind "rds-optimized-writes" {
  extends  = "resource"
  category = "Databases"
}

kind "rds-proxy-instance" {
  extends  = "resource"
  category = "Databases"
}

kind "rds-proxy-instance-alternate" {
  extends  = "resource"
  category = "Databases"
}

kind "rds-trusted-language-extensions-for-postgresql" {
  extends  = "resource"
  category = "Databases"
}

kind "recover" {
  extends  = "resource"
  category = "General Icons"
}

kind "red-hat-openshift-service" {
  extends  = "service"
  category = "Containers"
}

kind "redshift" {
  extends  = "service"
  category = "Analytics"
}

kind "redshift-auto-copy" {
  extends  = "resource"
  category = "Analytics"
}

kind "redshift-data-sharing-governance" {
  extends  = "resource"
  category = "Analytics"
}

kind "redshift-dense-compute-node" {
  extends  = "resource"
  category = "Analytics"
}

kind "redshift-dense-storage-node" {
  extends  = "resource"
  category = "Analytics"
}

kind "redshift-ml" {
  extends  = "resource"
  category = "Analytics"
}

kind "redshift-query-editor" {
  extends  = "resource"
  category = "Analytics"
}

kind "redshift-ra3" {
  extends  = "resource"
  category = "Analytics"
}

kind "redshift-streaming-ingestion" {
  extends  = "resource"
  category = "Analytics"
}

kind "rekognition" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "rekognition-image" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "rekognition-video" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "repost" {
  extends  = "service"
  category = "Customer Enablement"
}

kind "repost-private" {
  extends  = "service"
  category = "Customer Enablement"
}

kind "reserved-instance-reporting" {
  extends  = "service"
  category = "Cloud Financial Management"
}

kind "resilience-hub" {
  extends  = "service"
  category = "Management Tools"
}

kind "resource-access-manager" {
  extends  = "service"
  category = "Security & Identity"
}

kind "resource-explorer" {
  extends  = "service"
  category = "Management Tools"
}

kind "route-53" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "route-53-hosted-zone" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "route-53-readiness-checks" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "route-53-resolver" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "route-53-resolver-dns-firewall" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "route-53-resolver-query-logging" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "route-53-route-table" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "route-53-routing-controls" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "rtb-fabric" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "s3" {
  extends  = "service"
  category = "Storage"
}

kind "s3-batch-operations" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-bucket" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-bucket-with-objects" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-directory-bucket" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-express-one-zone" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-files" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-general-access-points" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-glacier" {
  extends  = "service"
  category = "Storage"
}

kind "s3-glacier-archive" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-glacier-deep-archive" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-glacier-flexible-retrieval" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-glacier-instant-retrieval" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-glacier-vault" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-intelligent-tiering" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-multi-region-access-points" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-object" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-object-lambda" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-object-lambda-access-points" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-object-lock" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-on-outposts" {
  extends  = "service"
  category = "Storage"
}

kind "s3-on-outposts-resource" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-one-zone-ia" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-replication" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-replication-time-control" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-select" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-standard" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-standard-ia" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-storage-lens" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-tables" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-vectors" {
  extends  = "resource"
  category = "Storage"
}

kind "s3-vpc-access-points" {
  extends  = "resource"
  category = "Storage"
}

kind "sagemaker" {
  extends  = "service"
  category = "Analytics"
}

kind "sagemaker-ai" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "sagemaker-ai-canvas" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "sagemaker-ai-geospatial-ml" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "sagemaker-ai-model" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "sagemaker-ai-notebook" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "sagemaker-ai-shadow-testing" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "sagemaker-ai-train" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "sagemaker-ground-truth" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "sagemaker-studio-lab" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "saml-token" {
  extends  = "resource"
  category = "General Icons"
}

kind "savings-plans" {
  extends  = "service"
  category = "Cloud Financial Management"
}

kind "sdk" {
  extends  = "resource"
  category = "General Icons"
}

kind "secrets-manager" {
  extends  = "service"
  category = "Security & Identity"
}

kind "security-agent" {
  extends  = "service"
  category = "Security & Identity"
}

kind "security-hub" {
  extends  = "service"
  category = "Security & Identity"
}

kind "security-hub-finding" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "security-incident-response" {
  extends  = "service"
  category = "Security & Identity"
}

kind "security-lake" {
  extends  = "service"
  category = "Security & Identity"
}

kind "server" {
  extends  = "resource"
  category = "General Icons"
}

kind "serverless-application-repository" {
  extends  = "service"
  category = "Compute"
}

kind "servers" {
  extends  = "resource"
  category = "General Icons"
}

kind "service-catalog" {
  extends  = "service"
  category = "Management Tools"
}

kind "service-management-connector" {
  extends  = "service"
  category = "Management Tools"
}

kind "ses" {
  extends  = "service"
  category = "Business Applications"
}

kind "ses-email" {
  extends  = "resource"
  category = "Business Applications"
}

kind "shield" {
  extends  = "service"
  category = "Security & Identity"
}

kind "shield-advanced" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "signer" {
  extends  = "service"
  category = "Security & Identity"
}

kind "simspace-weaver" {
  extends  = "service"
  category = "Compute"
}

kind "site-to-site-vpn" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "snowball" {
  extends  = "service"
  category = "Storage"
}

kind "snowball-edge" {
  extends  = "service"
  category = "Storage"
}

kind "snowball-import-export" {
  extends  = "resource"
  category = "Storage"
}

kind "sns" {
  extends  = "service"
  category = "Application Integration"
}

kind "sns-email-notification" {
  extends  = "resource"
  category = "Application Integration"
}

kind "sns-http-notification" {
  extends  = "resource"
  category = "Application Integration"
}

kind "sns-topic" {
  extends  = "resource"
  category = "Application Integration"
}

kind "source-code" {
  extends  = "resource"
  category = "General Icons"
}

kind "sqs" {
  extends  = "service"
  category = "Application Integration"
}

kind "sqs-message" {
  extends  = "resource"
  category = "Application Integration"
}

kind "sqs-queue" {
  extends  = "resource"
  category = "Application Integration"
}

kind "ssl-padlock" {
  extends  = "resource"
  category = "General Icons"
}

kind "step-functions" {
  extends  = "service"
  category = "Application Integration"
}

kind "storage-gateway" {
  extends  = "service"
  category = "Storage"
}

kind "storage-gateway-cached-volume" {
  extends  = "resource"
  category = "Storage"
}

kind "storage-gateway-file-gateway" {
  extends  = "resource"
  category = "Storage"
}

kind "storage-gateway-fsx-file-gateway" {
  extends  = "resource"
  category = "Storage"
}

kind "storage-gateway-noncached-volume" {
  extends  = "resource"
  category = "Storage"
}

kind "storage-gateway-s3-file-gateway" {
  extends  = "resource"
  category = "Storage"
}

kind "storage-gateway-tape-gateway" {
  extends  = "resource"
  category = "Storage"
}

kind "storage-gateway-virtual-tape-library" {
  extends  = "resource"
  category = "Storage"
}

kind "storage-gateway-volume-gateway" {
  extends  = "resource"
  category = "Storage"
}

kind "supply-chain" {
  extends  = "service"
  category = "Business Applications"
}

kind "support" {
  extends  = "service"
  category = "Customer Enablement"
}

kind "sustainability" {
  extends  = "service"
  category = "Management Tools"
}

kind "systems-manager" {
  extends  = "service"
  category = "Management Tools"
}

kind "systems-manager-application-manager" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-automation" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-change-calendar" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-change-manager" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-compliance" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-distributor" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-documents" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-incident-manager" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-inventory" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-maintenance-windows" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-opscenter" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-parameter-store" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-patch-manager" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-run-command" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-session-manager" {
  extends  = "resource"
  category = "Management Tools"
}

kind "systems-manager-state-manager" {
  extends  = "resource"
  category = "Management Tools"
}

kind "tape-storage" {
  extends  = "resource"
  category = "General Icons"
}

kind "telco-network-builder" {
  extends  = "service"
  category = "Management Tools"
}

kind "tensorflow" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "textract" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "textract-analyze-lending" {
  extends  = "resource"
  category = "Artificial Intelligence"
}

kind "thinkbox-deadline" {
  extends  = "service"
  category = "Media Services"
}

kind "thinkbox-frost" {
  extends  = "service"
  category = "Media Services"
}

kind "thinkbox-krakatoa" {
  extends  = "service"
  category = "Media Services"
}

kind "thinkbox-stoke" {
  extends  = "service"
  category = "Media Services"
}

kind "thinkbox-xmesh" {
  extends  = "service"
  category = "Media Services"
}

kind "timestream" {
  extends  = "service"
  category = "Databases"
}

kind "toolkit" {
  extends  = "resource"
  category = "General Icons"
}

kind "tools-and-sdks" {
  extends  = "service"
  category = "Developer Tools"
}

kind "training-certification" {
  extends  = "service"
  category = "Customer Enablement"
}

kind "transcribe" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "transfer-family" {
  extends  = "service"
  category = "Migration & Modernization"
}

kind "transfer-family-as2" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "transfer-family-ftp" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "transfer-family-ftps" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "transfer-family-sftp" {
  extends  = "resource"
  category = "Migration & Modernization"
}

kind "transform" {
  extends  = "service"
  category = "Migration & Modernization"
}

kind "transit-gateway" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "transit-gateway-attachment" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "translate" {
  extends  = "service"
  category = "Artificial Intelligence"
}

kind "trusted-advisor" {
  extends  = "service"
  category = "Management Tools"
}

kind "trusted-advisor-checklist" {
  extends  = "resource"
  category = "Management Tools"
}

kind "trusted-advisor-checklist-cost" {
  extends  = "resource"
  category = "Management Tools"
}

kind "trusted-advisor-checklist-fault-tolerant" {
  extends  = "resource"
  category = "Management Tools"
}

kind "trusted-advisor-checklist-performance" {
  extends  = "resource"
  category = "Management Tools"
}

kind "trusted-advisor-checklist-security" {
  extends  = "resource"
  category = "Management Tools"
}

kind "user" {
  extends  = "resource"
  category = "General Icons"
}

kind "user-notifications" {
  extends  = "service"
  category = "Management Tools"
}

kind "users" {
  extends  = "resource"
  category = "General Icons"
}

kind "verified-access" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "verified-permissions" {
  extends  = "service"
  category = "Security & Identity"
}

kind "vpc-carrier-gateway" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-customer-gateway" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-elastic-network-adapter" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-elastic-network-interface" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-endpoints" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-flow-logs" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-internet-gateway" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-lattice" {
  extends  = "service"
  category = "Networking & Content Delivery"
}

kind "vpc-nat-gateway" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-network-access-analyzer" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-network-access-control-list" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-peering-connection" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-reachability-analyzer" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-router" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-traffic-mirroring" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-vpn-connection" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "vpc-vpn-gateway" {
  extends  = "resource"
  category = "Networking & Content Delivery"
}

kind "waf" {
  extends  = "service"
  category = "Security & Identity"
}

kind "waf-bad-bot" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "waf-bot" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "waf-bot-control" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "waf-filtering-rule" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "waf-labels" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "waf-managed-rule" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "waf-rule" {
  extends  = "resource"
  category = "Security & Identity"
}

kind "wavelength" {
  extends  = "service"
  category = "Compute"
}

kind "well-architected-tool" {
  extends  = "service"
  category = "Management Tools"
}

kind "wickr" {
  extends  = "service"
  category = "Business Applications"
}

kind "workdocs" {
  extends  = "service"
  category = "Business Applications"
}

kind "workdocs-sdk" {
  extends  = "service"
  category = "Business Applications"
}

kind "workmail" {
  extends  = "service"
  category = "Business Applications"
}

kind "workspaces" {
  extends  = "service"
  category = "End User Computing"
}

kind "x-ray" {
  extends  = "service"
  category = "Developer Tools"
}

kind "account" {
  extends  = "boundary"
  category = "Groups"
}

kind "auto-scaling-group" {
  extends  = "boundary"
  category = "Groups"
}

kind "availability-zone" {
  extends  = "boundary"
  category = "Groups"
}

kind "cloud" {
  extends  = "boundary"
  category = "Groups"
}

kind "cloud-logo" {
  extends  = "boundary"
  category = "Groups"
}

kind "corporate-data-center" {
  extends  = "boundary"
  category = "Groups"
}

kind "ec2-instance-contents" {
  extends  = "boundary"
  category = "Groups"
}

kind "iot-greengrass-deployment" {
  extends  = "boundary"
  category = "Groups"
}

kind "private-subnet" {
  extends  = "boundary"
  category = "Groups"
}

kind "public-subnet" {
  extends  = "boundary"
  category = "Groups"
}

kind "region" {
  extends  = "boundary"
  category = "Groups"
}

kind "security-group" {
  extends  = "boundary"
  category = "Groups"
}

kind "server-contents" {
  extends  = "boundary"
  category = "Groups"
}

kind "spot-fleet" {
  extends  = "boundary"
  category = "Groups"
}

kind "vpc" {
  extends  = "boundary"
  category = "Groups"
}
