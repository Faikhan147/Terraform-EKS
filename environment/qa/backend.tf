terraform {
  backend "s3" {
    bucket         = "terraform-backend"
    key            = "eks/qa/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
