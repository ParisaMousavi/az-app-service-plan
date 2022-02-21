// https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan
resource "azurerm_app_service_plan" "default" {
  name                = "func-${var.resource_long_name}"
  location            = resource_group_location
  resource_group_name = resource_group_name
  kind                = "elastic"
  // reserved            = true // for Linux
  sku {
    tier     = "ElasticPremium"
    size     = "EP1"
    capacity = 1
  }
}