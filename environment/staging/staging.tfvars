
# prod.tfvars (real-time companies style, logical order)

# Environment
env                 = "Staging"

# Cluster & Node Group
cluster_name        = "staging-eks-cluster"
node_group_name     = "staging-node-group"
instance_type       = "t3.medium"
desired_size        = 2
min_size            = 2
max_size            = 2

# AMI & User Data
ami_id              = "ami-0eb04f1ac6539e319"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHN0YWdpbmctZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXN0YWdpbmctbm9kZS1ncm91cCI="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:us-east-1:584868042761:key/0f76004b-bd98-44fe-b305-53921c6d76c8"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0fec3d2da54fa90b3", "subnet-0f1267acaae7d5632", "subnet-04945afc9fba6d530"]
security_group_ids  = ["sg-0578f5d18a09057b7"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::584868042761:role/staging-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::584868042761:role/staging-eks-node-role"
