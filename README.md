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
* To create new workspace

```
terraform workspace new <name>
```
* To list the workspaces
```
terraform workspace list
```
