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
  description = "The name of the Azure DNS Zone to use."
  default     = "centos-habitat-base-applications"
}

////////////////////////////
///// Vault

variable "vault_address" {
  type        = "string"
  description = "The address of the vault server containing approles and secrets for the deployment. Must include port (e.g. http://vault.example.com:8200)"
  default     = "https://vault-test.azure-demos.bluepipeline.io"
}

variable "vault_token" {
  type        = "string"
  description = "The root token for the vault server used to configure the vault provider."
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
  default     = "grafana"
}

variable "habitat_origin" {
  type        = string
  description = "The name of the origin from which to load the package given in habitat_package"
}

////////////////////////////
///// Certbot

variable "certbot_email" {
  type        = string
  description = "Email address for certbot certificate"
}

////////////////////////////
///// Tags

variable "application_name" {
  type        = string
  description = "Name of application used in naming resources."
  default     = "grafana-with-vault-integration"
}

variable "tag_environment" {
  type        = string
  description = "Environment Tag"
  default     = "sales-event-demo"
}

variable "tag_contact" {
  type        = string
  description = "Contact information tag"
  default     = "Siraj Rauff <siraj.rauff@indellient.com>"
}
