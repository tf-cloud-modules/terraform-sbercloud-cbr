provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = var.region
}

module "policy" {
  source = "../../modules/policy"

  name            = "${var.name_prefix}-policy"
  type            = "backup"
  backup_quantity = 2
  time_period     = 2
  backup_cycle = {
    days            = "MO,TH"
    execution_times = ["06:00"]
  }
}

module "vault" {
  source = "../../modules/vault"

  name             = "${var.name_prefix}-vault"
  type             = "disk"
  consistent_level = "crash_consistent"
  protection_type  = "backup"
  size             = var.vault_size
  policy_id        = module.policy.id
  resources        = var.resources
}
