terraform {
  backend "s3" {
    bucket         = "terraform-backend-faisal-khan"
    key            = "eks/staging/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
