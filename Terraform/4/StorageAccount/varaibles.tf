variable "base_name" {
    type = string
    description = "Storage account name"
}

variable "resource_group_name" {
  type = string
  description = "Resource group name" # Defined in its own module
}

variable "location" {
    type = string
    description = "Az location for storage account" 
}