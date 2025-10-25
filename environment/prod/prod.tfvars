# prod.tfvars (real-time companies style, logical order)

# Region
region = "ap-southeast-2"

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
kms_key_arn         = "arn:aws:kms:ap-southeast-1:585008052573:key/5412e5bc-8781-4e20-972f-f3a90bc69ede"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0c88a16de66d9ff8e", "subnet-053ed326cad362f8d", "subnet-060151d7ee2b32795"]
security_group_ids  = ["sg-02d81eafffb9bc37e"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::585008052573:role/prod-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::585008052573:role/prod-eks-node-role"
