variable "eks_cluster_role_name" {}
variable "AmazonEKSClusterPolicy_arn" {}
variable "AmazonEKSServicePolicy_arn" {}
variable "CloudWatchAgentServerPolicy_arn" {}

variable "eks_nodes_ssm_role_name" {}
variable "AmazonSSMManagedInstanceCore_arn" {}
variable "AmazonEKSWorkerNodePolicy_arn" {}
variable "AmazonEKS_CNI_Policy_arn" {}
variable "AmazonEC2ContainerRegistryReadOnly_arn" {}

variable "cluster_name" {}
variable "kms_key_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "security_group_ids" {
  type = list(string)
}
variable "node_group_name" {}
variable "node_role_arn" {}
variable "instance_type" {}
variable "desired_size" {}
variable "min_size" {}
variable "max_size" {}
