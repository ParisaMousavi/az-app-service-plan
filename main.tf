// https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan
resource "azurerm_app_service_plan" "default" {
  name                = "func-${var.resource_long_name}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  kind                = "app"
  // reserved            = true // for Linux
  sku {
    tier     = "PremiumV2"
    size     = "P1v2"
    capacity = 1
  }
}