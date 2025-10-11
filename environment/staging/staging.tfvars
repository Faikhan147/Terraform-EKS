# staging.tfvars (real-time companies style, logical order)

# Region
region = "us-east-1"

# Environment
env                 = "Staging"

# Cluster & Node Group
cluster_name        = "staging-eks-cluster"
node_group_name     = "staging-node-group"
instance_type       = "m7i-flex.large"
desired_size        = 2
min_size            = 2
max_size            = 10

# AMI & User Data
ami_id              = "ami-0f1aa3b4190b5d620"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHN0YWdpbmctZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXN0YWdpbmctbm9kZS1ncm91cCI="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:us-east-1:584868042761:key/4775122e-9bb9-403d-8da8-a7f8c3222fab"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-037b70b8fd0e446fd", "subnet-031153a4e8b56670d", "subnet-031dbb7fe17a622dd"]
security_group_ids  = ["sg-020363c220e76aedf"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::584868042761:role/staging-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::584868042761:role/staging-eks-node-role"
