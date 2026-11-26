[English](README.md) | **Русский**

# Terraform-модули Sbercloud CBR

Репозиторий содержит независимые модули Terraform для Cloud Backup and Recovery
(CBR) в Sbercloud.

## Настройка провайдера

```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

Задайте учётные данные через переменные окружения:

```
export SBC_ACCESS_KEY="xxxx-xxx-xxx"
export SBC_SECRET_KEY="xxxx-xxx-xxx"
```

## Использование

Полная конфигурация, вызывающая оба модуля, находится в
[`examples/complete`](examples/complete/README.md). В репозитории намеренно нет
корневого модуля.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->

### Vault

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

### Policy

```hcl
module "policy" {
    source  = "tf-cloud-modules/cbr/sbercloud//modules/policy"

    name            = "cbr-test"
    type            = "backup"
    backup_quantity = 2
    backup_cycle = {
      days            = "MO,TH"
      execution_times = ["06:00"]
    }
}
```
