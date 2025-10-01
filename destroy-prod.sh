#!/bin/bash

echo "📦 Switching to prod environment directory..."
cd environment/prod

echo "🛠️ Initializing Terraform..."
terraform init -reconfigure

echo "📝 Formatting Terraform files..."
terraform fmt -recursive

echo "🔢 Listing available workspaces..."
terraform workspace list

echo "🛑 WARNING: This will destroy all prod resources!"
read -p "Are you absolutely sure? Type 'destroy' to continue: " confirm

if [ "$confirm" == "destroy" ]; then
    echo "🔥 Destroying prod infrastructure..."
    terraform destroy -var-file="prod.tfvars"

    echo "📊 Showing the current state after destroy..."
    terraform show
else
    echo "❌ Destroy aborted."
fi
