resource "azurerm_linux_function_app" "this" {
  count = data.azurerm_service_plan.this.os_type == "Linux" ? 1 : 0

  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location != "" ? var.location : data.azurerm_resource_group.this.location

  storage_account_name       = data.azurerm_storage_account.this.name
  storage_account_access_key = data.azurerm_storage_account.this.primary_access_key
  service_plan_id            = data.azurerm_service_plan.this.id

  dynamic "identity" {
    for_each = var.identity_type != "" ? [var.identity_type] : []
    content {
      type         = identity.value
      identity_ids = var.user_assigned_identity_ids
    }
  }

  site_config {}
}