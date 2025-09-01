# Welcome!

Welcome to my page! I am a developer that is learning how to use **Terraform** to provision an **Azure Web App**.

---

### Project Description

This repository is designed to create a **Linux Azure Web App** that will be deployed from a **Docker image**. The project uses a cloud backend to store its state file in an **Azure Blob container**, which is essential for collaborative and secure infrastructure management.

---

### Getting Started

Before you can provision the resources, you must authenticate with Azure using a Service Principal (SPN). Use the following CLI commands to set the necessary environment variables.

```bash
export ARM_CLIENT_ID="<your_service_principal_app_id>"
export ARM_CLIENT_SECRET="<your_service_principal_password>"
export ARM_TENANT_ID="<your_azure_ad_tenant_id>"
export ARM_SUBSCRIPTION_ID="<your_azure_subscription_id>"

# Once authenticated, you can run the following Terraform commands to provision the resources:

# Initialize the backend and providers
terraform init

# Review the execution plan
terraform plan

# Apply the changes to create resources
terraform apply
```
