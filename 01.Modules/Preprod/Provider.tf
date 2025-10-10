terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Tushar_Backend"
    storage_account_name = "ppipestoragetu491"
    container_name       = "ppipecontainer"
    key                  = "github_action_infraPreprod.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "8f69ec30-4948-4da8-96ee-6d4c11740858"
}