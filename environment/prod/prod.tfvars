# prod.tfvars (real-time companies style, logical order)

# Environment
env                 = "Prod"

# Cluster & Node Group
cluster_name        = "prod-eks-cluster"
node_group_name     = "prod-node-group"
instance_type       = "t3.medium"
desired_size        = 3
min_size            = 3
max_size            = 3

# AMI & User Data
ami_id              = "ami-0eb04f1ac6539e319"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHByb2QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXByb2Qtbm9kZS1ncm91cCI="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-south-1:923884399206:key/4e8228fa-b9b2-472a-8333-bdf6dec516c1"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0e025feb128873499", "subnet-0b7421ffc019f493b"]
security_group_ids  = ["sg-0cc0ceb088e483152"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::923884399206:role/prod-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::923884399206:role/prod-eks-node-role"
