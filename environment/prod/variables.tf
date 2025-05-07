variable "cluster_name" {}
variable "cluster_role_arn" {}
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
variable "ec2_key_pair" {}
