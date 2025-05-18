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

# Instance profile creation for EKS-Nodes Role attach to EKS-Nodes EC2

resource "aws_iam_instance_profile" "eks_nodes_ssm_profile" {
  name = var.eks_nodes_ssm_role_name
  role = aws_iam_role.eks_nodes_ssm_role.name
}
