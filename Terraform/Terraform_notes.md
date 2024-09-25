# Terraform

1. API as code, it makes API calls to requested cloud provider to create resources in their environment.
2. **terraform block**: outermost block, contains terraform settings
3. **required_providers**: inside terraform block,could be aws, azure, gcp 
4. **provider**: block to set specific provider settings like region
5. **resource**: to define infrastructure components
6. `terraform init`: When you create a new configuration — or check out an existing configuration from version control — you need to initialize the directory with terraform init
7. `terraform fmt`: automatically updates configurations in the current directory for readability and consistency
8. `terraform plan`: dry runs the configuration files. Displays what all changes will occur
9. `terraform apply`: to Apply the new configuration or update existing ones
10. `terraform validate`: to validate configuration files before apply.
11. `terraform destroy`: terminates resources managed by your Terraform project.It does not destroy resources running elsewhere that are not managed by the current Terraform project.
12. **main.tf file**: used to apply infrastructure configuration
13. **terraform.tfstate file**: created or updated automatically on terraform apply. Captures the latest state of configuration and help find resources that does not match the state
14. **variables.tf file**: to store variable values