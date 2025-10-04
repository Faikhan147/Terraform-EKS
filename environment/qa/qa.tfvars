# qa.tfvars (real-time companies style, logical order)

# Region
region = "us-east-1"

# Environment
env                 = "QA"

# Cluster & Node Group
cluster_name        = "qa-eks-cluster"
node_group_name     = "qa-node-group"
instance_type       = "t3.medium"
desired_size        = 1
min_size            = 1
max_size            = 1

# AMI & User Data
ami_id              = "ami-0c96ba1c00905ab84"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHFhLWVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICItLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1xYS1ub2RlLWdyb3VwIg=="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:us-east-1:584868042761:key/b8600fa6-40d4-4b9a-a7e7-e13770349a82"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-075e3cdd5651d0229", "subnet-0a48a7edaffea35c2", "subnet-0ce797c344f2ac240"]
security_group_ids  = ["sg-08df523a43647f263"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::584868042761:role/qa-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::584868042761:role/qa-eks-node-role"
