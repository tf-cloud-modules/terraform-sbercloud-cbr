output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(sbercloud_cbr_vault.this[0].id, "")
}