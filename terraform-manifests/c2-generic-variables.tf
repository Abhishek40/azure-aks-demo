## Generic Input Variables
# Business Division
variable "business_division" {
  description = "Business Division"
  default = "fin"
  type = string
}

# Environment Variable
variable "environment" {
  default = "UAT"
  description = "Environment to work on"
  type = string
}

# Azure resource group name
variable "resource_group_name" {
  description = "Default resource group name"
  default = "test-rg"
  type = string
}

#Azure resource group location
variable "resource_group_location" {
  description = "Resource group location"
  default = "eastus2"
}