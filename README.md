# Setting Up Azure Static Web App with Custom Domain using Terraform

This Terraform configuration sets up an Azure Static Web App and associates it with a custom domain using Azure DNS.

## Prerequisites

- **Azure Subscription:** Ensure you have an active Azure subscription.
- **Terraform Installed:** Download Terraform from [terraform.io](https://www.terraform.io/downloads.html).

## Deployed Resources

#### Public Dns Zone

#### Static Web App

## Usage

1. Clone this repository to your local machine.
2. Navigate to the directory containing the Terraform code.
3. Initialize the Terraform directory using the command `terraform init`.
4. Create an execution plan with `terraform plan`.
5. Apply the plan with `terraform apply`. You will be prompted to confirm the action by typing `yes`.

Remember to run `terraform destroy` when you no longer require these resources to avoid unnecessary AWS charges.
