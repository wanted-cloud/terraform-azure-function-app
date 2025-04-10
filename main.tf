/*
 * # wanted-cloud/terraform-azure-function-app
 * 
 * Terraform building block module for setup and creation of Azure Function Application.
 */

data "azurerm_service_plan" "this" {
  name                = var.service_plan_name
  resource_group_name = var.service_plan_resource_group_name != "" ? var.service_plan_resource_group_name : data.azurerm_resource_group.this.name
}