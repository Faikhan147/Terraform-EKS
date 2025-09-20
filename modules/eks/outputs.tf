# outputs.tfvars (real-time companies style)

# EKS Cluster Info
output "eks_cluster_name" {
  description = "Name of the created EKS cluster"
  value       = aws_eks_cluster.this.name
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = aws_eks_cluster.this.endpoint
}

output "eks_cluster_arn" {
  description = "ARN of the EKS cluster"
  value       = aws_eks_cluster.this.arn
}

output "eks_cluster_certificate_authority_data" {
  description = "Certificate authority data for the EKS cluster"
  value       = aws_eks_cluster.this.certificate_authority[0].data
}

# Node Group Info
output "eks_node_group_name" {
  description = "Name of the EKS node group"
  value       = aws_eks_node_group.this.node_group_name
}

output "eks_node_group_arn" {
  description = "ARN of the EKS node group"
  value       = aws_eks_node_group.this.arn
}

output "eks_node_group_instance_role_arn" {
  description = "IAM role ARN associated with the node group"
  value       = aws_eks_node_group.this.node_role_arn
}

# Networking Info
output "eks_subnet_ids" {
  description = "Subnets used by the EKS cluster"
  value       = aws_eks_cluster.this.vpc_config[0].subnet_ids
}

output "eks_security_group_ids" {
  description = "Security groups used by the EKS cluster"
  value       = aws_eks_cluster.this.vpc_config[0].security_group_ids
}
