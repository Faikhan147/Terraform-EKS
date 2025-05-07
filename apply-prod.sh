#!/bin/bash

echo "📦 Switching to prod environment directory..."
cd Terraform-EKS/environment/prod

echo "📦 Switching to prod workspace..."
terraform workspace select prod || terraform workspace new prod

echo "🔍 Initializing Terraform..."
terraform init

echo "✅ Validating configuration..."
terraform validate

echo "📝 Formatting Terraform files..."
terraform fmt -recursive

echo "📄 Creating plan for prod..."
terraform plan -var-file="prod.tfvars" -out=tfplan.out

echo "⚠️ Review the plan output before applying:"
terraform show tfplan.out

echo "🔢 Listing available workspaces..."
terraform workspace list

echo "🚀 Do you want to apply this plan to production? (yes/no)"
read choice

if [ "$choice" == "yes" ]; then
    echo "✅ Applying changes to prod..."
    terraform apply "tfplan.out"
else
    echo "❌ Deployment cancelled."
fi
