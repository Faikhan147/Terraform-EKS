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
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHByb2QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXByb2Qtbm9kZS1ncm91cCI="

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-south-1:923884399206:key/89c3172d-fd22-4297-a69d-f8edb714787b"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-09563498fb3fb2496", "subnet-0e025feb128873499"]
security_group_ids  = ["sg-04aaf47767740a850"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::923884399206:role/qa-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::923884399206:role/qa-eks-node-role"
