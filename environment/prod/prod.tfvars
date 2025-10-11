# prod.tfvars (real-time companies style, logical order)

# Region
region = "us-east-1"

# Environment
env                 = "Prod"

# Cluster & Node Group
cluster_name        = "prod-eks-cluster"
node_group_name     = "prod-node-group"
instance_type       = "t3.micro"
desired_size        = 2
min_size            = 2
max_size            = 10

# AMI & User Data
ami_id              = "ami-0f1aa3b4190b5d620"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHByb2QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXByb2Qtbm9kZS1ncm91cCI="

# Root Volume
root_volume_size    = 150
root_volume_type    = "gp3"
root_volume_iops    = 3000
root_volume_throughput = 1250

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:us-east-1:992862946505:key/78ecb810-5e8e-474b-b704-ed5cf8092587"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-037b70b8fd0e446fd", "subnet-031153a4e8b56670d", "subnet-031dbb7fe17a622dd"]
security_group_ids  = ["sg-0670984b0023b758d"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::992862946505:role/prod-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::992862946505:role/prod-eks-node-role"
