output "policy_id" {
  description = "ID of the created CBR policy."
  value       = module.policy.id
}

output "vault_id" {
  description = "ID of the created CBR vault."
  value       = module.vault.id
}
