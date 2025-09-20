# variables.tf (real-time companies style)

# Environment
variable "env" {
  description = "Environment name"
  type        = string
}

# Cluster & Node Group
variable "cluster_name" {
  description = "EKS Cluster name"
  type        = string
}

variable "node_group_name" {
  description = "EKS Node Group name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
}

variable "desired_size" {
  description = "Desired number of nodes in node group"
  type        = number
}

variable "min_size" {
  description = "Minimum number of nodes in node group"
  type        = number
}

variable "max_size" {
  description = "Maximum number of nodes in node group"
  type        = number
}

# AMI & User Data
variable "ami_id" {
  description = "AMI ID for worker nodes"
  type        = string
}

variable "user_data" {
  description = "Bootstrap script for worker nodes (base64 encoded)"
  type        = string
}

# KMS / Encryption
variable "kms_key_arn" {
  description = "KMS Key ARN for encryption"
  type        = string
}

# Existing / Shared VPC Resources
variable "subnet_ids" {
  description = "List of existing subnet IDs for EKS nodes"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of existing security group IDs for EKS nodes"
  type        = list(string)
}

# IAM Role Names
variable "eks_cluster_role_arn" {
  description = "Existing IAM role name for EKS cluster"
  type        = string
}

variable "eks_nodes_ssm_role_arn" {
  description = "Existing IAM role name for EKS worker nodes"
  type        = string
}
