output "function_app" {
  description = "The Azure Function application."
  value       = data.azurerm_service_plan.this.os_type == "Windows" ? azurerm_windows_function_app.this : azurerm_linux_function_app.this
}