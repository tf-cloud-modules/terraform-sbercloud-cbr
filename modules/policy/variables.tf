variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "Specifies the region in which to create the CBR policy."
  type        = string
  default     = null
}

variable "name" {
  description = "Specifies a unique name of the CBR policy."
  type        = string
}

variable "type" {
  description = "Specifies the protection type of the CBR policy"
  type        = string
}

variable "enabled" {
  description = "Specifies whether to enable the CBR policy."
  type        = bool
  default     = null
}

variable "backup_quantity" {
  description = "Specifies the maximum number of retained backups."
  type        = number
  default     = null
}

variable "time_period" {
  description = "Specifies the duration (in days) for retained backups."
  type        = number
  default     = null
}

variable "backup_cycle" {
  description = "Specifies the scheduling rule for the CBR policy backup execution."
  type        = any
  default     = {}

}