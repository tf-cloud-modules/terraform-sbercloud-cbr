variable "region" {
  description = "SberCloud region in which to create CBR resources."
  type        = string
  default     = "ru-moscow-1"
}

variable "name_prefix" {
  description = "Prefix used to name the CBR policy and vault."
  type        = string
  default     = "cbr-example"
}

variable "vault_size" {
  description = "CBR vault capacity in GB."
  type        = number
  default     = 20
}

variable "resources" {
  description = "Resources to protect with the CBR vault."
  type = list(object({
    server_id = string
    includes  = list(string)
    excludes  = list(string)
  }))
}
