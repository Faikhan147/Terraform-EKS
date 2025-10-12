# staging.tfvars (real-time companies style, logical order)

# Region
region = "ap-southeast-2"

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
ami_id              = "ami-02b6238143f466bd1"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHN0YWdpbmctZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXN0YWdpbmctbm9kZS1ncm91cCI="

# Root Volume
root_volume_size    = 80
root_volume_type    = "gp3"
root_volume_iops    = 1000
root_volume_throughput = 250

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-southeast-2:992862946505:key/a2c182f4-308a-4e9a-988c-c2e93e148d35"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0d661ca73c57d2def", "subnet-0783c0c29044687ca", "subnet-0b210cb6d871f3375"]
security_group_ids  = ["sg-097e61f61c03a072e"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::992862946505:role/staging-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::992862946505:role/staging-eks-node-role"

