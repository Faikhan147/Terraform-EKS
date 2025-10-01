# main.tf (real-time companies style)

provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.0"
    }
  }
}

module "eks" {
  source = "../../module/eks"

  env = var.env

  # Cluster
  cluster_name     = var.cluster_name
  eks_cluster_role_arn = var.eks_cluster_role_arn  # pass ARN

  # Node group
  node_group_name       = var.node_group_name
  instance_type         = var.instance_type
  ami_id                = var.ami_id
  desired_size          = var.desired_size
  min_size              = var.min_size
  max_size              = var.max_size
  user_data             = var.user_data
  eks_nodes_ssm_role_arn        = var.eks_nodes_ssm_role_arn   # pass ARN

  # Networking
  subnet_ids         = var.subnet_ids
  security_group_ids = var.security_group_ids

  # KMS
  kms_key_arn = var.kms_key_arn
}
