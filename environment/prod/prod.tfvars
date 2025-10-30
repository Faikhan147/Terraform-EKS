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
ami_id              = "ami-017ab8758d48b8729"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHByb2QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXByb2Qtbm9kZS1ncm91cCI="

# Root Volume
root_volume_size    = 200
root_volume_type    = "gp3"
root_volume_iops    = 6000
root_volume_throughput = 750

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-southeast-2:585008052573:key/3464560b-21cf-4983-8d96-bccd76572a23"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0cfe8cf186062f38c", "subnet-09539a2a3f90bb805", "subnet-001969529dcc272b2"]
security_group_ids  = ["sg-0851f4f568483160f"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::585008052573:role/prod-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::585008052573:role/prod-eks-node-role"
