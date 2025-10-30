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
ami_id              = "ami-017ab8758d48b8729"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHFhLWVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICItLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1xYS1ub2RlLWdyb3VwIg=="

# Root Volume
root_volume_size    = 60
root_volume_type    = "gp3"
root_volume_iops    = 3000
root_volume_throughput = 125

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-southeast-2:585008052573:key/a38787a6-751b-45a9-91c1-fc0639a2f009"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-0fc672e91003fb2b2", "subnet-036d6d5772d7f053a", "subnet-08e2871786696388d"]
security_group_ids  = ["sg-0400f514f9afa78f8"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::585008052573:role/qa-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::585008052573:role/qa-eks-node-role"
