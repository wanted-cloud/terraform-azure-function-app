variable "name" {
  description = "Name of the Azure Function application."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group in which the Azure Function application will be created."
  type        = string
}

variable "location" {
  description = "Location of the resource group in which the Azure Function application will be created, if not set it will be the same as the resource group."
  type        = string
  default     = ""
}

variable "service_plan_name" {
  description = "Name of the service plan used for Azure Function application."
  type        = string

}

variable "service_plan_resource_group_name" {
  description = "Name of the service plan resource group. If omitted, the resource group name of function app will be used."
  type        = string
  default     = ""
}

variable "storage_account_name" {
  description = "Name of the storage account used for Azure Function application."
  type        = string
}

variable "storage_account_resource_group_name" {
  description = "Name of the resource group in which the storage account will be created."
  type        = string
  default     = ""
}

variable "identity_type" {
  description = "Type of identity to use for the Azure service plan."
  type        = string
  default     = ""
}

variable "user_assigned_identity_ids" {
  description = "List of user assigned identity IDs for the Azure service plan."
  type        = list(string)
  default     = ""
}
