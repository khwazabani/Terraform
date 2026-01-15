variable location{
  default="eastus"
  type=string
}
variable name{
  default="terraform-resource-bani"
  type=string
}
variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
  sensitive = true
}
