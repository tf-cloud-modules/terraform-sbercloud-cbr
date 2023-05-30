# Sbercloud CBR Terraform module (Vault)

## How to Configure Terraform for Sbercloud

- [Sbercloud Quickstart](https://cloud.ru/ru/docs/terraform/ug/topics/quickstart.html)
- Add environment variables for terraform authentication in Sbercloud

```
export SBC_ACCESS_KEY="xxxx-xxx-xxx"
export SBC_SECRET_KEY="xxxx-xxx-xxx"
```

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "vault" {
    source  = "tf-cloud-modules/cbr/sbercloud//modules/vault"

    name             = "cbr-test"
    type             = "disk"
    consistent_level = "crash_consistent"
    protection_type  = "backup"
    size             = 20
    resources = [
        {
        includes = ["xxxxxxx-xxxxxxxxx-xxxxxxxxx"]
        }
    ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | 1.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_cbr_vault.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/cbr_vault) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_expand"></a> [auto\_expand](#input\_auto\_expand) | Specifies to enable auto capacity expansion for the backup protection type vault. | `string` | `null` | no |
| <a name="input_consistent_level"></a> [consistent\_level](#input\_consistent\_level) | Specifies the backup specifications. | `string` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_enterprise_project_id"></a> [enterprise\_project\_id](#input\_enterprise\_project\_id) | Specifies a unique ID in UUID format of enterprise project. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies a unique name of the CBR vault. | `string` | n/a | yes |
| <a name="input_policy_id"></a> [policy\_id](#input\_policy\_id) | Specifies a policy to associate with the CBR vault. | `string` | `null` | no |
| <a name="input_protection_type"></a> [protection\_type](#input\_protection\_type) | Specifies the protection type of the CBR vault. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Specifies the region in which to create the CBR vault. | `string` | `null` | no |
| <a name="input_resources"></a> [resources](#input\_resources) | value | `any` | `[]` | no |
| <a name="input_size"></a> [size](#input\_size) | Specifies the vault sapacity, in GB. | `number` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Specifies the key/value pairs to associate with the CBR vault. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | Specifies the object type of the CBR vault. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
<!-- END_TF_DOCS -->