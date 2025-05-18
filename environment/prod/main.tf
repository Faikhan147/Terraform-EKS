module "eks" {
  source              = "../../modules/eks"

  cluster_name        = var.cluster_name
  eks_cluster_role_name                           = var.eks_cluster_role_name
  AmazonEKSClusterPolicy_arn                      = var.AmazonEKSClusterPolicy_arn
  AmazonEKSServicePolicy_arn                      = var.AmazonEKSServicePolicy_arn
  CloudWatchAgentServerPolicy_arn                 = var.CloudWatchAgentServerPolicy_arn
  kms_key_arn         = var.kms_key_arn
  subnet_ids          = var.subnet_ids
  security_group_ids  = var.security_group_ids
  node_group_name     = var.node_group_name
  instance_type       = var.instance_type
  desired_size        = var.desired_size
  min_size            = var.min_size
  max_size            = var.max_size
  eks_nodes_ssm_role_name                           = var.eks_nodes_ssm_role_name
  AmazonSSMManagedInstanceCore_arn                  = var.AmazonSSMManagedInstanceCore_arn
  AmazonEKSWorkerNodePolicy_arn                     = var.AmazonEKSWorkerNodePolicy_arn
  AmazonEKS_CNI_Policy_arn                          = var.AmazonEKS_CNI_Policy_arn
  AmazonEC2ContainerRegistryReadOnly_arn            = var.AmazonEC2ContainerRegistryReadOnly_arn
}
