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

  labels = {
    environment = "prod"
  }

  tags = {
    # Node Group resource ke liye
    Name = "${var.cluster_name}-node-group"
    environment = "prod"
    # Ye tag EKS ko batata hai ki ye cluster ka hissa hai
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
    
    # Extra custom tag (lekin EC2 instance pe nahi lagega)
    NodeInstanceName = "${var.cluster_name}-node-instance"
  }

  depends_on = [aws_eks_cluster.this]
}
