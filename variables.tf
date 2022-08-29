variable "name" {
  description = "Full name of the role (not compatible with \"name_prefix\")"
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "Prefix of the role name (not compatible with \"name\")"
  type        = string
  default     = "api-gateway-cloudwatch-global"
}
