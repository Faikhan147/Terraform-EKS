# prod.tfvars (real-time companies style, logical order)

# Region
region = "us-east-1"

# Environment
env                 = "Prod"

# Cluster & Node Group
cluster_name        = "prod-eks-cluster"
node_group_name     = "prod-node-group"
instance_type       = "t3.medium"
desired_size        = 1
min_size            = 1
max_size            = 1

# AMI & User Data
ami_id              = "ami-0c96ba1c00905ab84"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHByb2QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXByb2Qtbm9kZS1ncm91cCI="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:us-east-1:584868042761:key/320d3796-08a9-4055-9f72-e1da580233f6"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-075e3cdd5651d0229", "subnet-0a48a7edaffea35c2", "subnet-0ce797c344f2ac240"]
security_group_ids  = ["sg-01ce87bc6c157b893"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::584868042761:role/prod-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::584868042761:role/prod-eks-node-role"
