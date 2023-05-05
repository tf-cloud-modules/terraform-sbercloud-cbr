# Sbercloud CBR Terraform module (Policy)

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "policy" {
    source  = "tf-cloud-modules/cbr/sbercloud//modules/policy"

    name            = "cbr-test"
    type            = "backup"
    backup_quantity = 2
    time            = 2
    backup_cycle = {
      days            = "MO,TH"
      execution_times = ["06:00"]
    }
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
| [sbercloud_cbr_policy.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/cbr_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backup_cycle"></a> [backup\_cycle](#input\_backup\_cycle) | Specifies the scheduling rule for the CBR policy backup execution. | `any` | `{}` | no |
| <a name="input_backup_quantity"></a> [backup\_quantity](#input\_backup\_quantity) | Specifies the maximum number of retained backups. | `number` | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Specifies whether to enable the CBR policy. | `bool` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies a unique name of the CBR policy. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Specifies the region in which to create the CBR policy. | `string` | `null` | no |
| <a name="input_time_period"></a> [time\_period](#input\_time\_period) | Specifies the duration (in days) for retained backups. | `number` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | Specifies the protection type of the CBR policy | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
<!-- END_TF_DOCS -->