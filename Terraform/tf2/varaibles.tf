# Validation block, default variables are called "change-me" 
# Running terraform plan without adding arguments like dev.tfvars or prod.tfvars will exit with error
# Running with 

variable "project" {
    type=string
    description = "name of my project"
    default     = "change-me"
  
    validation {
      condition     = var.project != "change-me"
      error_message = "Specify a valid project name. 'change-me' is not allowed."
    }
}

variable "region" {
    type = string
    description = "name of my region"
    default = "change-me"
}




