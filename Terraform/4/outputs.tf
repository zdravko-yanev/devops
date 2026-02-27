# Captures outputs from the module files

output "rg_name" {
    value = module.ResourceGroup.rg_name_out  # rg_name_out is defined in outputs.tf in resource group
}

output "sa_name" {
  value = module.StorageAccount.sa_name_out
}