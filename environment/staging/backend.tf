terraform {
  backend "s3" {
    bucket         = "terraform-backend-faisalkhan"
    key            = "eks/staging/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
