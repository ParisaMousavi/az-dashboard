resource "azurerm_dashboard" "this" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  location             = var.location
  dashboard_properties = var.dashboard_properties
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}
