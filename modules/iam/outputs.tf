output "eks_cluster_role_arn" {
  description = "ARN of the EKS cluster IAM role"
  value       = aws_iam_role.eks_cluster_role.arn
}

output "eks_nodes_ssm_role_arn" {
  description = "ARN of the EKS nodes SSM IAM role"
  value       = aws_iam_role.eks_nodes_ssm_role.arn
}

output "eks_nodes_ssm_instance_profile_name" {
  description = "Instance profile name for the EKS nodes SSM role"
  value       = aws_iam_instance_profile.eks_nodes_ssm_profile.name
}
