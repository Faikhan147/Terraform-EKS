eks_cluster_role_name                = "qa-eks-cluster-role"
AmazonEKSClusterPolicy_arn          = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
AmazonEKSServicePolicy_arn          = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
CloudWatchAgentServerPolicy_arn     = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"

eks_nodes_ssm_role_name             = "qa-eks-node-role"
AmazonSSMManagedInstanceCore_arn    = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
AmazonEKSWorkerNodePolicy_arn       = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
AmazonEKS_CNI_Policy_arn            = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
AmazonEC2ContainerRegistryReadOnly_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"

cluster_name        = "qa-eks-cluster"
kms_key_arn         = "arn:aws:kms:ap-south-1:195275659054:key/cf1e36fb-e5c5-4d3d-bfd9-4eda4041cb55"
subnet_ids          = ["subnet-0473aa947a04c0fa3", "subnet-0d122a84d3edb9ba1"]
security_group_ids  = ["sg-0b3f9b068c10ac4d2"]
node_group_name     = "qa-node-group"
instance_type       = "t3.medium"
ami_id              = "ami-0eb04f1ac6539e319"
user_data           = "IyEvYmluL2Jhc2gKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHFhLWVrcy1jbHVzdGVyIC0ta3VibGV0LWV4dHJhLWFyZ3MgIi0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwPXFhLW5vZGUtZ3JvdXAi"
env                 = "QA"
desired_size        = 3
min_size            = 3
max_size            = 3
