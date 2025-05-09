variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "cluster_role_arn" {
  description = "IAM role ARN for EKS cluster"
  type        = string
}

variable "kms_key_arn" {
  description = "KMS Key ARN for secrets encryption"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the cluster"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
}

variable "node_role_arn" {
  description = "IAM role ARN for node group"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
}

variable "desired_size" {
  description = "Desired node group size"
  type        = number
}

variable "min_size" {
  description = "Minimum node group size"
  type        = number
}

variable "max_size" {
  description = "Maximum node group size"
  type        = number
}

variable "ec2_key_pair" {
  description = "Name of the EC2 key pair"
  type        = string
}
