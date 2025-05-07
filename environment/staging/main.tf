provider "aws" {
  region = "ap-south-1"
}

module "eks" {
  source              = "../../../modules/eks"

  cluster_name        = var.cluster_name
  cluster_role_arn    = var.cluster_role_arn
  kms_key_arn         = var.kms_key_arn
  subnet_ids          = var.subnet_ids
  security_group_ids  = var.security_group_ids
  node_group_name     = var.node_group_name
  node_role_arn       = var.node_role_arn
  instance_type       = var.instance_type
  desired_size        = var.desired_size
  min_size            = var.min_size
  max_size            = var.max_size
  ec2_key_pair        = var.ec2_key_pair
}
