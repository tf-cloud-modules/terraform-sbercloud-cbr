variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "Specifies the region in which to create the CBR vault."
  type        = string
  default     = null
}

variable "name" {
  description = "Specifies a unique name of the CBR vault."
  type        = string
}

variable "type" {
  description = "Specifies the object type of the CBR vault."
  type        = string
}

variable "consistent_level" {
  description = "Specifies the backup specifications."
  type        = string
}

variable "protection_type" {
  description = "Specifies the protection type of the CBR vault."
  type        = string
}

variable "size" {
  description = "Specifies the vault sapacity, in GB."
  type        = number
}

variable "auto_expand" {
  description = "Specifies to enable auto capacity expansion for the backup protection type vault."
  type        = string
  default     = null
}

variable "enterprise_project_id" {
  description = "Specifies a unique ID in UUID format of enterprise project."
  type        = string
  default     = null
}

variable "policy_id" {
  description = "Specifies a policy to associate with the CBR vault."
  type        = string
  default     = null
}

variable "tags" {
  description = "Specifies the key/value pairs to associate with the CBR vault."
  type        = map(string)
  default     = {}
}

variable "resources" {
  description = "value"
  type        = any
  default     = []
}