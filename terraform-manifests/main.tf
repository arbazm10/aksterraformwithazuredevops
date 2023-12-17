terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.8.0"
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

    backend "azurerm" {
      resource_group_name   = "byterraapp-grp"
      storage_account_name  = "teraasa"
      container_name        = "prodtfstate"
      key                   = "terraform.tfstate"
  }
}
provider "azurerm" {
      subscription_id = "898734ae-50a5-4891-b151-0d0c58eaf0d6"
      client_id       = "3866a430-e151-47f0-b582-2f1e5c4264f7"
      client_secret   = "n4L8Q~LkOQoCbMoral-ufBbz-~9zaF_La-5A9bRP"
      tenant_id       = "945d465f-bcf2-485e-aefd-d714990419c0"
      features {}
}

resource "random_pet" "aksrandom" {

}

resource "azurerm_resource_group" "appgrp" {
  name     = var.resource_group_name
  location = "North Europe"
}
resource "azurerm_resource_group" "appgrp1" {
  name     = "byterraapp-1grp"
  location = "North Europe"
}

