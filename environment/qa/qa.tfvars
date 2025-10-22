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
ami_id              = "ami-02b6238143f466bd1"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHFhLWVrcy1jbHVzdGVyIC0ta3ViZWxldC1leHRyYS1hcmdzICItLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD1xYS1ub2RlLWdyb3VwIg=="

# Root Volume
root_volume_size    = 60
root_volume_type    = "gp3"
root_volume_iops    = 3000
root_volume_throughput = 125

# KMS / Encryption
kms_key_arn         = "arn:aws:kms:ap-southeast-2:992862946505:key/57898647-a362-4bd5-9c92-94624ce1e3f2"

# Existing / Shared VPC Resources
subnet_ids          = ["subnet-000306ca7c6980ed0", "subnet-0f910e45f7b2261d3", "subnet-023b7ac4f6705e59c"]
security_group_ids  = ["sg-0f2af7796d3235247"]

# IAM Role Names
eks_cluster_role_arn = "arn:aws:iam::992862946505:role/qa-eks-cluster-role"
eks_nodes_ssm_role_arn = "arn:aws:iam::992862946505:role/qa-eks-node-role"
