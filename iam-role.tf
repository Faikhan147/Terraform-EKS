# EKS Cluster Role
resource "aws_iam_role" "eks_cluster_role" {
  name = var.eks_cluster_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "eks.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Attach AmazonEKSClusterPolicy
resource "aws_iam_role_policy_attachment" "attach_cluster_policy" {
  role       = aws_iam_role.eks_cluster_role.name
  policy_arn = var.AmazonEKSClusterPolicy_arn
}

# Attach AmazonEKSServicePolicy
resource "aws_iam_role_policy_attachment" "attach_service_policy" {
  role       = aws_iam_role.eks_cluster_role.name
  policy_arn = var.AmazonEKSServicePolicy_arn
}

# (Optional) Attach CloudWatchAgentServerPolicy
resource "aws_iam_role_policy_attachment" "attach_cloudwatch_policy" {
  role       = aws_iam_role.eks_cluster_role.name
  policy_arn = var.CloudWatchAgentServerPolicy_arn
}



# Role creation of EKS-Nodes

resource "aws_iam_role" "eks_nodes_ssm_role" {
  name = var.eks_nodes_ssm_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      },
      Action = "sts:AssumeRole"
    }]
  })
}

# Default policy AmazonSSMManagedInstanceCore attached to EKS-Nodes Role

resource "aws_iam_role_policy_attachment" "attach_ssm_access" {
  role       = aws_iam_role.eks_nodes_ssm_role.name
  policy_arn = var.AmazonSSMManagedInstanceCore_arn
}

# Default policy AmazonEKSWorkerNodePolicy attached to EKS-Nodes Role

resource "aws_iam_role_policy_attachment" "attach_workernode_access" {
  role       = aws_iam_role.eks_nodes_ssm_role.name
  policy_arn = var.AmazonEKSWorkerNodePolicy_arn
}

# Default policy AmazonEKS_CNI_Policy attached to EKS-Nodes Role

resource "aws_iam_role_policy_attachment" "attach_cni_access" {
  role       = aws_iam_role.eks_nodes_ssm_role.name
  policy_arn = var.AmazonEKS_CNI_Policy_arn
}

# Default policy AmazonEC2ContainerRegistryReadOnly attached to EKS-Nodes Role

resource "aws_iam_role_policy_attachment" "attach_container_access" {
  role       = aws_iam_role.eks_nodes_ssm_role.name
  policy_arn = var.AmazonEC2ContainerRegistryReadOnly_arn
}

# Instance profile creation for EKS-Nodes Role attach to EKS-Nodes EC2

resource "aws_iam_instance_profile" "eks_nodes_ssm_profile" {
  name = var.eks_nodes_ssm_role_name
  role = aws_iam_role.eks_nodes_ssm_role.name
}
