#!/bin/bash

echo "📦 Switching to staging environment directory..."
cd Terraform-EKS/environment/staging

echo "📦 Switching to staging workspace..."
terraform workspace select staging

echo "🛠️ Initializing Terraform..."
terraform init

echo "📝 Formatting Terraform files..."
terraform fmt -recursive

echo "🔢 Listing available workspaces..."
terraform workspace list

echo "🛑 WARNING: This will destroy all staging resources!"
read -p "Are you absolutely sure? Type 'destroy' to continue: " confirm

if [ "$confirm" == "destroy" ]; then
    echo "🔥 Destroying staging infrastructure..."
    terraform destroy -var-file="staging.tfvars"

    echo "📊 Showing the current state after destroy..."
    terraform show
else
    echo "❌ Destroy aborted."
fi
