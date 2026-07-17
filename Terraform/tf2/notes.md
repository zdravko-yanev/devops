Errors seen so far:

-In providers block, it requires crdentials.json file to work. I set a fake crednetials file

-If you have main.tf in each env folder, it will download 100 mb of providers in each folder

-One file with variables, default value can be "change-me"

variable "project" {
    type=string
    description = "name of my project"
    default     = "change-me"
}

environments/devtfvars should only have the name of the variable and the new value:

project = "dev.tfvars-project-name"
region = "dev.tfvars-region-name"

-powershell syntax needs quotes: terraform plan -var-file="environments/dev.tfvars"

-Working with environments:
NOTE if you execute plan1 with dev values and plan2 with prod values it results in the same state file!
To avoid this, you can sue use one backend BUT different TF workspaces:
terraform workspace new dev
terraform workspace new prod
terraform workspace select dev

Or use different local backends:
terraform plan -var-file=environments\dev.tfvars -state=states\dev.tfstate
terraform apply -var-file=environments\dev.tfvars -state=states\dev.tfstate
terraform destroy -var-file=environments\dev.tfvars -state=states\dev.tfstate