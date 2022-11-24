variable "pubsub_name" {
  type    = string
  default = "terraform-workshop-max-powers"
}

variable "env_name" {
  type = string
}

variable "message_ttl" {
  type = string
}

variable "create_ci_topic" {
  type    = bool
  default = false
}