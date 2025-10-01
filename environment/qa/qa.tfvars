# qa.tfvars (real-time companies style, logical order)

# Environment
env                 = "QA"

# Region
region = "us-east-1"

# Cluster & Node Group
cluster_name        = "qa-eks-cluster"
node_group_name     = "qa-node-group"
instance_type       = "t3.medium"
desired_size        = 2
min_size            = 2
max_size            = 2

# AMI & User Data
ami_id              = "ami-0c96ba1c00905ab84"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHFhLWVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICItLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1xYS1ub2RlLWdyb3VwIg=="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:us-east-1:584868042761:key/4ea26c83-08b2-41a4-8caf-bd2bdb305b02"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-07135694077c7d614", "subnet-0b5eacae25779fdb1", "subnet-0fec3d2da54fa90b3"]
security_group_ids  = ["sg-02212f3583a73eede"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::584868042761:role/qa-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::584868042761:role/qa-eks-node-role"
