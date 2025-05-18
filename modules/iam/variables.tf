variable "eks_cluster_role_name" {
  description = "Name of the EKS cluster IAM role"
  type        = string
}

variable "AmazonEKSClusterPolicy_arn" {
  description = "ARN for AmazonEKSClusterPolicy"
  type        = string
}

variable "AmazonEKSServicePolicy_arn" {
  description = "ARN for AmazonEKSServicePolicy"
  type        = string
}

variable "CloudWatchAgentServerPolicy_arn" {
  description = "ARN for CloudWatchAgentServerPolicy"
  type        = string
}

variable "eks_nodes_ssm_role_name" {
  description = "Name of the IAM role for EKS nodes with SSM"
  type        = string
}

variable "AmazonSSMManagedInstanceCore_arn" {
  description = "ARN for AmazonSSMManagedInstanceCore policy"
  type        = string
}

variable "AmazonEKSWorkerNodePolicy_arn" {
  description = "ARN for AmazonEKSWorkerNodePolicy"
  type        = string
}

variable "AmazonEKS_CNI_Policy_arn" {
  description = "ARN for AmazonEKS_CNI_Policy"
  type        = string
}

variable "AmazonEC2ContainerRegistryReadOnly_arn" {
  description = "ARN for AmazonEC2ContainerRegistryReadOnly policy"
  type        = string
}
