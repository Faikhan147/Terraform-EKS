# variables.tf (real-time companies style)


variable "vpc_id" {}
variable "region" {}
variable "env" {}
variable "cluster_name" {}
variable "node_group_name" {}
variable "instance_type" {}
variable "desired_size" {}
variable "min_size" {}
variable "max_size" {}
variable "ami_id" {}
variable "user_data" {}
variable "kms_key_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "security_group_ids" {
  type = list(string)
}
variable "eks_cluster_role_arn" {}
variable "eks_nodes_ssm_role_arn" {}
