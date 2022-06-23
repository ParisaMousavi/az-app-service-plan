
resource "azurerm_app_service_plan" "default" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.kind
  sku {
    tier     = var.sku.tier
    size     = var.sku.size
    capacity = var.sku.capacity
    }
  tags = merge(
    var.additional_tags,
    {
      created-by = "terraform"
    },
  )

}