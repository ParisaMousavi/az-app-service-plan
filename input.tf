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

variable "os_type" {
  type = string
  validation {
    condition     = contains(["Windows", "Linux", "WindowsContainer"], var.os_type)
    error_message = "Allowed values are Windows, Linux, and WindowsContainer."
  }
}

variable "worker_count" {
  type = number
}

variable "sku_name" {
  type    = string
  default = "F1"
}

