resource "sbercloud_cbr_policy" "this" {
  count = var.create ? 1 : 0

  region          = var.region
  name            = var.name
  type            = var.type
  enabled         = var.enabled
  backup_quantity = var.backup_quantity
  time_period     = var.time_period

  backup_cycle {
    interval        = lookup(var.backup_cycle, "interval", null)
    days            = lookup(var.backup_cycle, "days", null)
    execution_times = lookup(var.backup_cycle, "execution_times")
  }
}