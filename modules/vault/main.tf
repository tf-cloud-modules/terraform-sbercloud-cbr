resource "sbercloud_cbr_vault" "this" {
  count = var.create ? 1 : 0

  region                = var.region
  name                  = var.name
  type                  = var.type
  consistent_level      = var.consistent_level
  protection_type       = var.protection_type
  size                  = var.size
  auto_expand           = var.auto_expand
  enterprise_project_id = var.enterprise_project_id
  policy_id             = var.policy_id
  tags                  = var.tags

  dynamic "resources" {
    for_each = var.resources
    content {
      server_id = lookup(resources.value, "server_id", null)
      includes  = lookup(resources.value, "includes", [])
      excludes  = lookup(resources.value, "excludes", [])
    }
  }
}