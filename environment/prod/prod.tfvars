# prod.tfvars (real-time companies style, logical order)

# Region
region = "ap-southeast-2"

# Environment
env                 = "Prod"

# Cluster & Node Group
cluster_name        = "prod-eks-cluster"
node_group_name     = "prod-node-group"
instance_type       = "m7i-flex.large"
desired_size        = 2
min_size            = 2
max_size            = 10

# AMI & User Data
ami_id              = "ami-02b6238143f466bd1"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHByb2QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXByb2Qtbm9kZS1ncm91cCI="

# Root Volume
root_volume_size    = 150
root_volume_type    = "gp3"
root_volume_iops    = 3000
root_volume_throughput = 1000

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-southeast-2:992862946505:key/ba6a657c-3072-4d15-bc3f-90622f14a58f"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0d661ca73c57d2def", "subnet-0783c0c29044687ca", "subnet-0b210cb6d871f3375"]
security_group_ids  = ["sg-0308622602a418369"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::992862946505:role/prod-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::992862946505:role/prod-eks-node-role"
