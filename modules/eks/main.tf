resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

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

resource "aws_launch_template" "eks_node_lt" {
  name_prefix   = "${var.cluster_name}-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "${var.cluster_name}-node"
      "kubernetes.io/cluster/${var.cluster_name}" = "owned"
      environment = "prod"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = var.node_group_name
  subnet_ids      = var.subnet_ids
  node_role_arn   = var.node_role_arn

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
    environment = "prod"
  }

  tags = {
    environment = "prod"
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }

  depends_on = [aws_eks_cluster.this]
}
