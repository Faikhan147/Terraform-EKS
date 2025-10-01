# EKS outputs

# Cluster Info
output "eks_cluster_name" {
  value       = module.eks.eks_cluster_name
  description = "Name of the created EKS cluster"
}

output "eks_cluster_endpoint" {
  value       = module.eks.eks_cluster_endpoint
  description = "Endpoint of the EKS cluster"
}

output "eks_cluster_arn" {
  value       = module.eks.eks_cluster_arn
  description = "ARN of the EKS cluster"
}

output "eks_cluster_certificate_authority_data" {
  value       = module.eks.eks_cluster_certificate_authority_data
  description = "Certificate authority data for the EKS cluster"
}

# Node Group Info
output "eks_node_group_name" {
  value       = module.eks.eks_node_group_name
  description = "Name of the EKS node group"
}

output "eks_node_group_arn" {
  value       = module.eks.eks_node_group_arn
  description = "ARN of the EKS node group"
}

output "eks_node_group_instance_role_arn" {
  value       = module.eks.eks_node_group_instance_role_arn
  description = "IAM role ARN associated with the node group"
}

# Networking Info
output "eks_subnet_ids" {
  value       = module.eks.eks_subnet_ids
  description = "Subnets used by the EKS cluster"
}

output "eks_security_group_ids" {
  value       = module.eks.eks_security_group_ids
  description = "Security groups used by the EKS cluster"
}
