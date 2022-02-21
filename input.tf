//
// this file will be overwritten by terragrunt
//
// used only for unit tests - hence no defaults
//

variable "resource_long_name" {
  type        = string
  description = "(provided by Terragrunt)"
}


variable "resource_group_name" {
  type        = string
  description = "(provided by Terragrunt)"
}

variable "resource_group_location" {
  type        = string
  description = "(provided by Terragrunt)"
}