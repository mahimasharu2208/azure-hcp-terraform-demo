terraform {
  cloud {
    organization = "mahima-test"

    workspaces {
      name = "azure-hcp-terraform-demo"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "demo" {
  name     = "terraform-demo-rg"
  location = "Central India" 
}
