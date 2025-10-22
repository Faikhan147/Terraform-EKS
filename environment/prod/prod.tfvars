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
ami_id              = "ami-02b6238143f466bd1"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHByb2QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXByb2Qtbm9kZS1ncm91cCI="

# Root Volume
root_volume_size    = 200
root_volume_type    = "gp3"
root_volume_iops    = 6000
root_volume_throughput = 750

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-southeast-2:584868042761:key/db0f511e-064c-49fe-a45d-ffb0e4732609"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0251b706a1c964561", "subnet-0275abbf20a7702f0", "subnet-04bb3276fa109abc0"]
security_group_ids  = ["sg-0d956d1f6e92a9410"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::584868042761:role/prod-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::584868042761:role/prod-eks-node-role"
