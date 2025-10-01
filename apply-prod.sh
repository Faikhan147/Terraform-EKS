#!/bin/bash

echo "📦 Switching to prod environment directory..."
cd environment/prod

echo "🔍 Initializing Terraform..."
terraform init -reconfigure

echo "✅ Validating configuration..."
terraform validate

echo "📝 Formatting Terraform files..."
terraform fmt -recursive

# Display workspace list
echo "🔢 Listing available workspaces..."
terraform workspace list

echo "📄 Creating plan for prod..."
terraform plan -var-file="prod.tfvars" -out=tfplan.out

echo "⚠️ Review the plan output before applying:"
terraform show tfplan.out

# Fixed the read command syntax
echo "🚀 Do you want to apply this plan to production? (yes/no)"
read choice

if [ "$choice" == "yes" ]; then
    echo "✅ Applying changes to prod..."
    terraform apply "tfplan.out"
    
    echo "📊 Showing the current state after applying the plan..."
    terraform show
else
    echo "❌ Deployment cancelled."
fi
