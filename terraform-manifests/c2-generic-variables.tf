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

# Azure Location
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "Central US"
}

# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  default = "~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}

# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"  
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "StackSimplify@102"
  description = "This variable defines the Windows admin password k8s Worker nodes"  
}