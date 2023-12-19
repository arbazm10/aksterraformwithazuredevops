# We will define 
# 1. Terraform Settings Block
# 1. Required Version Terraform
# 2. Required Terraform Providers
# 3. Terraform Remote State Storage with Azure Storage Account (last step of this section)
# 2. Terraform Provider Block for AzureRM
# 3. Terraform Resource Block: Define a Random Pet Resource

# 1. Terraform Settings Block
terraform {
  # 1. Required Version Terraform
  required_version = ">= 0.13"
  # 2. Required Terraform Providers  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"

    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"

    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    #resource_group_name   = "terraform-storage-rg"
    #storage_account_name  = "terraformstatexlrwdrzs"
    #container_name        = "tfstatefiles"
    #key                   = "terraform-custom-vnet.tfstate"
  }  
}
# 2. Terraform Provider Block for AzureRM
provider "azurerm" {
  features {}
  #subscription_id = "898734ae-50a5-4891-b151-0d0c58eaf0d6"
  #client_id       = "3866a430-e151-47f0-b582-2f1e5c4264f7"
  #client_secret   = "n4L8Q~LkOQoCbMoral-ufBbz-~9zaF_La-5A9bRP"
  #tenant_id       = "945d465f-bcf2-485e-aefd-d714990419c0"
}

# 3. Terraform Resource Block: Define a Random Pet Resource
resource "random_pet" "aksrandom" {

}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "my-context"
}
