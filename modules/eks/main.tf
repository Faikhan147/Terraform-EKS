# main.tf (real-time companies style)

# EKS Cluster
resource "aws_eks_cluster" "this" {
  name = var.cluster_name

  # Directly using the name from variables (assume existing IAM role)
  role_arn = var.eks_cluster_role_arn

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }

  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler"
  ]

  encryption_config {
    provider {
      key_arn = var.kms_key_arn
    }
    resources = ["secrets"]
  }
}

# Launch Template for Node Group
resource "aws_launch_template" "eks_node_lt" {
  name_prefix   = "${var.cluster_name}-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  user_data     = var.user_data

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "${var.cluster_name}-node"
      "kubernetes.io/cluster/${var.cluster_name}" = "owned"
      environment = var.env
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

# EKS Node Group
resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = var.node_group_name
  subnet_ids      = var.subnet_ids
  node_role_arn   = var.eks_nodes_ssm_role_arn  # existing IAM role name from var

  launch_template {
    id      = aws_launch_template.eks_node_lt.id
    version = "$Latest"
  }

  scaling_config {
    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  labels = {
    environment = var.env
  }

  tags = {
    environment = var.env
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }

  depends_on = [aws_eks_cluster.this]
}
