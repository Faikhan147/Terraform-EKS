#!/bin/bash

echo "📦 Switching to prod environment directory..."
cd Terraform-EKS/environment/qa

echo "📦 Switching to prod workspace..."
terraform workspace select qa

echo "🛠️ Initializing Terraform..."
terraform init

echo "📝 Formatting Terraform files..."
terraform fmt -recursive

echo "🔢 Listing available workspaces..."
terraform workspace list

echo "🛑 WARNING: This will destroy all qa resources!"
read -p "Are you absolutely sure? Type 'destroy' to continue: " confirm

if [ "$confirm" == "destroy" ]; then
    echo "🔥 Destroying prod infrastructure..."
    terraform destroy -var-file="qa.tfvars"

    echo "📊 Showing the current state after destroy..."
    terraform show
else
    echo "❌ Destroy aborted."
fi
