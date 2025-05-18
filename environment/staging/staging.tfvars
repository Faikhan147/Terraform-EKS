eks_cluster_role_name                = "staging-eks-cluster-role"
AmazonEKSClusterPolicy_arn          = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
AmazonEKSServicePolicy_arn          = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
CloudWatchAgentServerPolicy_arn     = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"

eks_nodes_ssm_role_name             = "staging-eks-node-role"
AmazonSSMManagedInstanceCore_arn    = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
AmazonEKSWorkerNodePolicy_arn       = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
AmazonEKS_CNI_Policy_arn            = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
AmazonEC2ContainerRegistryReadOnly_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"

cluster_name        = "staging-eks-cluster"
kms_key_arn         = "arn:aws:kms:ap-south-1:195275659054:key/cf1e36fb-e5c5-4d3d-bfd9-4eda4041cb55"
subnet_ids          = ["subnet-0d122a84d3edb9ba1", "subnet-0473aa947a04c0fa3", "subnet-05e6fb6a379ad46b5"]
security_group_ids  = ["sg-01320907e0576d048"]
node_group_name     = "staging-node-group"
instance_type       = "t3.medium"
desired_size        = 2
min_size            = 1
max_size            = 3
