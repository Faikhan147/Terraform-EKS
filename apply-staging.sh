
#!/bin/bash

echo "📦 Switching to staging environment directory..."
cd environment/staging

echo "📦 Switching to staging workspace..."
terraform workspace select staging || terraform workspace new staging

echo "🔍 Initializing Terraform..."
terraform init

echo "✅ Validating configuration..."
terraform validate

echo "📝 Formatting Terraform files..."
terraform fmt -recursive

echo "🔢 Listing available workspaces..."
terraform workspace list

echo "📄 Creating plan for staging..."
terraform plan -var-file="staging.tfvars" -out=tfplan.out

echo "⚠️ Review the plan output before applying:"
terraform show tfplan.out

echo "🚀 Do you want to apply this plan to staging? (yes/no)"
read choice

if [ "$choice" == "yes" ]; then
    echo "✅ Applying changes to staging..."
    terraform apply "tfplan.out"
    
    echo "📊 Showing the current state after applying the plan..."
    terraform show
else
    echo "❌ Deployment cancelled."
fi
