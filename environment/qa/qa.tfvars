# qa.tfvars (real-time companies style, logical order)

# Environment
env                 = "QA"

# Cluster & Node Group
cluster_name        = "qa-eks-cluster"
node_group_name     = "qa-node-group"
instance_type       = "t3.medium"
desired_size        = 3
min_size            = 3
max_size            = 3

# AMI & User Data
ami_id              = "ami-0eb04f1ac6539e319"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHFhLWVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICItLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1xYS1ub2RlLWdyb3VwIg=="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-south-1:923884399206:key/89c3172d-fd22-4297-a69d-f8edb714787b"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-09563498fb3fb2496", "subnet-0e025feb128873499"]
security_group_ids  = ["sg-04aaf47767740a850"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::923884399206:role/qa-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::923884399206:role/qa-eks-node-role"
