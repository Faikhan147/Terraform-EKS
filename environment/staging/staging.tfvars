# staging.tfvars (real-time companies style, logical order)

# Region
region = "ap-southeast-2"

# Environment
env                 = "Staging"

# Cluster & Node Group
cluster_name        = "staging-eks-cluster"
node_group_name     = "staging-node-group"
instance_type       = "t3.medium"
desired_size        = 2
min_size            = 2
max_size            = 10

# AMI & User Data
ami_id              = "ami-017ab8758d48b8729"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHN0YWdpbmctZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXN0YWdpbmctbm9kZS1ncm91cCI="

# Root Volume
root_volume_size    = 100
root_volume_type    = "gp3"
root_volume_iops    = 3000
root_volume_throughput = 300

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-southeast-2:585008052573:key/446fd2df-af28-4888-9ef4-2bbd5e879e1f"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0fc672e91003fb2b2", "subnet-036d6d5772d7f053a", "subnet-08e2871786696388d"]
security_group_ids  = ["sg-00f4b882d47f7b209"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::585008052573:role/staging-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::585008052573:role/staging-eks-node-role"

