variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "additional_tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}

variable "sku" {
  type = object({
    tier     = string
    size     = string
    capacity = number
  })
}

variable "kind" {
  type = string
  validation {
    condition = contains(["elastic", "app", "functionapp"], var.kind)
    error_message = "Allowed values are elastic, app, functionapp."
  }
}