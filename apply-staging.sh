
#!/bin/bash

echo "📦 Switching to prod environment directory..."
cd Terraform-EKS/environment/staging

echo "📦 Switching to prod workspace..."
terraform workspace select staging || terraform workspace new staging

echo "🔍 Initializing Terraform..."
terraform init

echo "✅ Validating configuration..."
terraform validate

echo "📝 Formatting Terraform files..."
terraform fmt -recursive

# Display workspace list
echo "🔢 Listing available workspaces..."
terraform workspace list

echo "📄 Creating plan for prod..."
terraform plan -var-file="staging.tfvars" -out=tfplan.out

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
