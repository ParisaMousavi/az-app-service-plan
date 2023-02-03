
resource "azurerm_service_plan" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type
  worker_count        = var.worker_count
  sku_name            = var.sku_name
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )

}
