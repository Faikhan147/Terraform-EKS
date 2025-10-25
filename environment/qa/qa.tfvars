# qa.tfvars (real-time companies style, logical order)

# Region
region = "ap-southeast-2"

# Environment
env                 = "QA"

# Cluster & Node Group
cluster_name        = "qa-eks-cluster"
node_group_name     = "qa-node-group"
instance_type       = "t3.medium"
desired_size        = 2
min_size            = 2
max_size            = 10

# AMI & User Data
ami_id              = "ami-094d3844f0d6f6c63"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHFhLWVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICItLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1xYS1ub2RlLWdyb3VwIg=="

# Root Volume
root_volume_size    = 60
root_volume_type    = "gp3"
root_volume_iops    = 3000
root_volume_throughput = 125

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-southeast-2:585008052573:key/ea906d12-6ab7-42a0-89b9-aaee76a83afc"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0ea24c47081076ba0", "subnet-0478313351ca68723", "subnet-089076a5f3c29c0d0"]
security_group_ids  = ["sg-07994460b5eb1e0c1"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::585008052573:role/qa-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::585008052573:role/qa-eks-node-role"
