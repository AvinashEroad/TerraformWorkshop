data "azurerm_servicebus_namespace" "main" {
  name                = "Sandbox-Aus-East-Fallback"
  resource_group_name = "Coretex_Dev"
}