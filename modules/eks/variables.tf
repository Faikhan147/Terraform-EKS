variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "Faisal"
}

variable "cluster_role_arn" {
  description = "IAM role ARN for EKS cluster"
  type        = string
  default     = "arn:aws:iam::195275659054:role/AmazonEKSAutoClusterRole"
}

variable "kms_key_arn" {
  description = "KMS Key ARN for secrets encryption"
  type        = string
  default     = "arn:aws:kms:ap-south-1:195275659054:key/cf1e36fb-e5c5-4d3d-bfd9-4eda4041cb55"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the cluster"
  type        = list(string)
  default     = ["subnet-0d122a84d3edb9ba1", "subnet-05e6fb6a379ad46b5", "subnet-0473aa947a04c0fa3"] # Replace with actual subnet IDs
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = ["sg-0123544b2570bf42b", "sg-ALL-TRAFFIC"] # Replace with actual security group IDs
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "Faisal-Node"
}

variable "node_role_arn" {
  description = "IAM role ARN for node group"
  type        = string
  default     = "arn:aws:iam::195275659054:role/Node-Role"
}

variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "desired_size" {
  description = "Desired node group size"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum node group size"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum node group size"
  type        = number
  default     = 2
}

variable "ec2_key_pair" {
  description = "Name of the EC2 key pair"
  type        = string
  default     = "WIN-KEY-PEM"
}
