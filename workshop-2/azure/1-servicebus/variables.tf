variable "pubsub_name" {
  type    = string
  default = "terraform-workshop-max-powers"
}

variable "subscriptionId" {
    description = "Enter subscription id"
    type = string
}

variable "resourceGroupName" {
    description = "Enter resource group name"
    type = string
}

variable "serviceBusNamespace" {
    description = "Enter ServiceBus Namespace"
    type = string
}