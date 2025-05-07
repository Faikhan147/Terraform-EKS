terraform {
  backend "s3" {
    bucket         = "terraform-backend"
    key            = "eks/prod/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
