output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(sbercloud_cbr_policy.this[0].id, "")
}