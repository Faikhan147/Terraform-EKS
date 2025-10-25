# prod.tfvars (real-time companies style, logical order)

# Region
region = "ap-southeast-1"

# Environment
env                 = "Prod"

# Cluster & Node Group
cluster_name        = "prod-eks-cluster"
node_group_name     = "prod-node-group"
instance_type       = "t3.medium"
desired_size        = 2
min_size            = 2
max_size            = 10

# AMI & User Data
ami_id              = "ami-0ba3f45bd3fd58d94"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHByb2QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXByb2Qtbm9kZS1ncm91cCI="

# Root Volume
root_volume_size    = 200
root_volume_type    = "gp3"
root_volume_iops    = 6000
root_volume_throughput = 750

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-southeast-2:585008052573:key/f11b0a20-4ebd-45a6-9b14-0d195d055dd3"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0ea24c47081076ba0", "subnet-0478313351ca68723", "subnet-089076a5f3c29c0d0"]
security_group_ids  = ["sg-07ff01e3fcd119b87"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::585008052573:role/prod-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::585008052573:role/prod-eks-node-role"
