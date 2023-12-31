terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.60.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"
    storage_account_name = "satyaprasad08tfsg"
    container_name       = "tfstate"
    key                  = "satyaprasad08tf.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}
