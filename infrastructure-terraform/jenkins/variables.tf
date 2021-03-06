////////////////////////////
///// Azure

variable "resource_group_name" {
  type        = string
  description = "The Azure Resource Group where resources will exist."
  default     = "liftoff-modern-application-delivery"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Azure Storage Account to use."
  default     = "liftoffmodernapplication"
}

variable "image_name" {
  type        = string
  description = "The name of the Azure Machine Image to use."
  default     = "centos-habitat-base-applications"
}

////////////////////////////
///// Centos

variable "admin_username" {
  type        = string
  description = "The name of the admin username on each VM."
  default     = "centos"
}

////////////////////////////
///// Habitat

variable "habitat_package" {
  type        = string
  description = "The Habitat package to load"
  default     = "jenkins"
}

variable "habitat_origin" {
  type        = string
  description = "The name of the origin from which to load the package given in habitat_package"
  default     = "liftoff-modern-application-delivery"
}

////////////////////////////
///// Jenkins Credentials

variable "habitat_auth_token" {
  type        = string
  description = "Habitat Builder Authentication Token used to provision Jenkins Credentials"
}

variable "arm_client_id" {
  type        = string
  description = "Azure Client ID used to provision Jenkins Credentials"
}

variable "arm_client_secret" {
  type        = string
  description = "Azure Client Secret used to provision Jenkins Credentials"
}

variable "arm_tenant_id" {
  type        = string
  description = "Azure Tenant ID used to provision Jenkins Credentials"
}

variable "arm_subscription_id" {
  type        = string
  description = "Azure Subscription ID used to provision Jenkins Credentials"
}

variable "github_user" {
  type        = string
  description = "Github Username/email used to provision Jenkins Credentials"
}

variable "github_password" {
  type        = string
  description = "Github Password/Token used to provision Jenkins Credentials"
}

////////////////////////////
///// Tags

variable "application_name" {
  type        = string
  description = "Name of application used in naming resources."
  default     = "jenkins"
}

variable "tag_project" {
  type        = string
  description = "Project Tag"
  default     = "sales-event-demo"
}

variable "tag_contact" {
  type        = string
  description = "Contact information tag"
  default     = "Siraj Rauff <siraj.rauff@indellient.com>"
}
