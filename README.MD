* Terraform workshop

# Terraform Prerequisite

- [Download Terraform](https://developer.hashicorp.com/terraform/downloads)

# Azure Prerequisite

- Azure login via CLI (az login)

# 1.1. Sample Exercise  

## Designing your first root module

```bash
$ cd simple-root-module
$ terraform init
$ terraform apply
$ terraform output password
$ terraform state list
$ terraform state show random_password.password
```

## Remove state

```bash
$ cd workshop-1/simple-root-module
$ terraform state rm random_password.password
$ terraform apply
$ terraform output password
$ terraform state list
$ terraform state show random_password.password
```

# 1.2. Modular Exercise

```bash
$ cd workshop-1/modular-storage
$ terraform init
$ terraform plan
$ terraform plan -var first_name=creating-from -var last_name=terraform-workshop
$ terraform apply
$ terraform apply -var first_name=creating-from -var last_name=terraform-workshop -auto-approve
```

# 2.1. Service Bus Exercise

```bash
$ cd workshop-2/azure/1-servicebus
$ terraform init
$ terraform plan -var subscriptionId=%ARM_SUBSCRIPTION_ID% -var resourceGroupName=Coretex_Dev -var serviceBusNamespace=Sandbox-Aus-East-Fallback
$ terraform apply -var subscriptionId=%ARM_SUBSCRIPTION_ID% -var resourceGroupName=Coretex_Dev -var serviceBusNamespace=Sandbox-Aus-East-Fallback -auto-approve
```

# 2.2. Datasources

```bash
$ cd workshop-2/azure/2-datasources
$ terraform init
$ terraform plan
$ terraform apply -auto-approve
```

# 2.3. Environments Exercise

```bash
$ cd workshop-2/azure/3-environments
$ terraform init
$ terraform plan -var-file=env/dev.tfvars
$ terraform apply -var-file=env/dev.tfvars -auto-approve
$ terraform plan -var-file=env/prod.tfvars
$ terraform apply -var-file=env/prod.tfvars -auto-approve
```

# 2.4. Conditions Exercise

```bash
$ cd workshop-2/azure/4-conditionals
$ terraform init
$ terraform plan -var-file=env/dev.tfvars
$ terraform apply -var-file=env/dev.tfvars -auto-approve
$ terraform plan -var-file=env/prod.tfvars
$ terraform apply -var-file=env/prod.tfvars -auto-approve
```

---

> Worked on Windows Operating and Azure