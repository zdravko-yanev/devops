terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.8.1"
    }
  }
}

#provider "random" {
  # Configuration options
#}

# To use random values, declare it as a resource

resource "random_string" "random" {
  length           = 6
  special          = false  # You CANT use special or upper characters for storage account name
  upper = false
}

# Name cant have upper letters, we invoke "lower" case convertion of the string:

resource "azurerm_storage_account" "example" {
  name                     = "${lower(var.base_name)}${random_string.random.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"  # You can have Stanadrd, Premium
  account_replication_type = "LRS"       # You can have LRS, GRS

}