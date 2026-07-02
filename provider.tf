terraform {
     backend "azurerm" {
        resource_group_name = "rg-ashwani"
    storage_account_name = "stashwani"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "conashwani"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "ashwani.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }
}

provider "azurerm" {
  features {}
}