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

resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = var.node_group_name
  subnet_ids      = var.subnet_ids
  node_role_arn        = var.node_role_arn

  instance_types       = [var.instance_type]
  disk_size            = 100

  scaling_config {
    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  tags = {
    Name = "${var.cluster_name}-node-group"
  }


  labels = {
    environment = "prod"
  }

  # Important: This tag applies to EC2 instances created in the node group
  node_group_tags = {
    Name = "${var.cluster_name}-node-instance"
  }

  depends_on = [aws_eks_cluster.this]
}
