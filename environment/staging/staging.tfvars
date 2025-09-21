
# prod.tfvars (real-time companies style, logical order)

# Environment
env                 = "Staging"

# Cluster & Node Group
cluster_name        = "staging-eks-cluster"
node_group_name     = "staging-node-group"
instance_type       = "t3.medium"
desired_size        = 3
min_size            = 3
max_size            = 3

# AMI & User Data
ami_id              = "ami-0eb04f1ac6539e319"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHN0YWdpbmctZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXN0YWdpbmctbm9kZS1ncm91cCI="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-south-1:923884399206:key/df62b1f9-4507-45f8-8b13-3af5bad04efa"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0b7421ffc019f493b", "subnet-09563498fb3fb2496"]
security_group_ids  = ["sg-08ee041c463ef33b8"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::923884399206:role/staging-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::923884399206:role/staging-eks-node-role"
