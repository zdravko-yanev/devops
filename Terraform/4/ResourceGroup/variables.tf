variable "base_name" {
    type = string
    description = "same string will be used for resource group and storage account" 
}

variable "location" {
    type = string
    description = "Location of deplyment in Azure" 
}

#These vars are placeholders. They get the value in the root main.tf