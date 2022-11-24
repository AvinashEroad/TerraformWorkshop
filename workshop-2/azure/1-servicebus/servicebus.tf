resource "azurerm_servicebus_topic" "main" {
  name         = "${var.pubsub_name}-topic"
  namespace_id = "/subscriptions/${var.subscriptionId}/resourceGroups/${var.resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/${var.serviceBusNamespace}"
  enable_partitioning = true
}