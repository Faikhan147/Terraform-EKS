# qa.tfvars (real-time companies style, logical order)

# Region
region = "us-east-1"

# Environment
env                 = "QA"

# Cluster & Node Group
cluster_name        = "qa-eks-cluster"
node_group_name     = "qa-node-group"
instance_type       = "t3.micro"
desired_size        = 2
min_size            = 2
max_size            = 10

# AMI & User Data
ami_id              = "ami-0f1aa3b4190b5d620"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHFhLWVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICItLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1xYS1ub2RlLWdyb3VwIg=="

# Root Volume
root_volume_size    = 50
root_volume_type    = "gp3"
root_volume_iops    = 300
root_volume_throughput = 125

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:us-east-1:992862946505:key/491a9a09-2d2f-4dfb-8b47-ca6e2ad7f520"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-037b70b8fd0e446fd", "subnet-031153a4e8b56670d", "subnet-031dbb7fe17a622dd"]
security_group_ids  = ["sg-09e7dba5f63258ae9"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::992862946505:role/qa-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::992862946505:role/qa-eks-node-role"
