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
