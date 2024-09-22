* To initiate the terraform tfvars

```
terraform init -backend-config=folder-name/filename.tf
```

* To apply plan

```
terraform plan -backend-config=folder-name/file-name.tf
```
* To apply plan
  
```
terraform apply -var-file=folder-name/file-name.tfvars
```
* To destroy the terraform infra

```
terraform destroy -var-file=folder-name/file-name.tfvars -auto-approve
```

Terraform workspace initialisation commands

* To initialise the terraform workspace
```
terraform workspace init
```
* To create new workspace in terraform

```
terraform workspace new <name>
```
* You can list all available workspaces and see which one is active (marked with an asterisk *) by running
```
terraform workspace list
```
* To know which workspace you are currently in while using Terraform, you can use the following command
```
terraform workspace show
```
