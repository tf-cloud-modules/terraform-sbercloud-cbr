# Sbercloud CBR Terraform module

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
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
    time            = 2
    backup_cycle = {
      days            = "MO,TH"
      execution_times = ["06:00"]
    }
}
```