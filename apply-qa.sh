#!/bin/bash

echo "📦 Switching to qa environment directory..."
cd environment/qa

echo "🔍 Initializing Terraform..."
terraform init -reconfigure

echo "✅ Validating configuration..."
terraform validate

echo "📝 Formatting Terraform files..."
terraform fmt -recursive

# Display workspace list
echo "🔢 Listing available workspaces..."
terraform workspace list

echo "📄 Creating plan for qa..."
terraform plan -var-file="qa.tfvars" -out=tfplan.out

echo "⚠️ Review the plan output before applying:"
terraform show tfplan.out

echo "🚀 Do you want to apply this plan to qa? (yes/no)"
read choice

if [ "$choice" == "yes" ]; then
    echo "✅ Applying changes to qa..."
    terraform apply "tfplan.out"
    
    echo "📊 Showing the current state after applying the plan..."
    terraform show
else
    echo "❌ Deployment cancelled."
fi
