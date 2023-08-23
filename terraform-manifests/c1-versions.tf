# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 2.0"
    }
    random = {
        source = "hashicorp/random"
        version = ">= 3.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }
  }
}

# Terraform State Storage to Azure Storage Container
backend "azurerm"{
  resource_group_name   = "terraform-storage-rg"
  storage_account_name  = "terraformstatekalyan"
  container_name        = "tfstatefiles"
  key                   = "dev.terraform.tfstate"
}

#Provider Block
provider "azurerm" {
  features {
    # Updated as part of June2023 to delete "ContainerInsights Resources" when deleting the Resource Group
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  skip_provider_registration = true
}