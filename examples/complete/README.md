# Complete CBR example

This example creates a CBR backup policy and a disk vault associated with that
policy. It uses the local `policy` and `vault` modules directly; the repository
does not provide a root module.

## Prerequisites

- Terraform `>= 0.13.1`
- SberCloud credentials supplied through `SBC_ACCESS_KEY` and `SBC_SECRET_KEY`
- IDs of resources to protect

## Run

```shell
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your project and resource IDs.
terraform init -backend=false
terraform validate
terraform plan
```

The example pins `sbercloud-terraform/sbercloud` to the tested version
`1.13.3`. Do not commit `terraform.tfvars`, because it is ignored and may
contain environment-specific values.
