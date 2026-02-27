resource "azurerm_resource_group" "example" {
  name     = "${var.base_name}RG"   # this will use the generic "name" and add RG to the string
  location = var.location    # refers the varibles.tf file
}