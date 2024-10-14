variable "location" {
  type    = string
  default = "europe-west3"
  validation {
    condition     = can(regex("^(europe-west1|europe-west4|europe-west6|europe-west3|europe-north1|europe-central2|europe-west8|europe-southwest1|europe-west9|europe-west12)$", var.location))
    error_message = "location must be europe-west1,europe-west4,europe-west6,europe-west3,europe-north1,europe-central2,europe-west8,europe-southwest1,europe-west9,europe-west12."
  }
}

variable "labels" {
  description = "label for bucket"
  type        = map(string)
  default = {
    "environment" = "dev"
    "name"        = "nocode"
    "demo"        = "true"
  }
}

variable "name" {
  type = string
}

variable "project_id" {
  type = string
}

variable "prefix" {
  type    = string
  default = "demo"
}

variable "storage_class" {
  type    = string
  default = "STANDARD"
  validation {
    condition     = can(regex("^(STANDARD|MULTI_REGIONAL|REGIONAL|NEARLINE|COLDLINE|ARCHIVE)$", var.storage_class))
    error_message = "storage_class must be STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE or ARCHIVE."
  }
}

variable "versioning" {
  type    = bool
  default = false
}

variable "environment" {
  type    = string
  default = "dev-demo"
}

variable "TFC_VAULT_PROVIDER_AUTH" {
  type        = string
  description = "enables TFE Vault Provider authentication"
  default     = true
}

variable "TFC_VAULT_ADDR" {
  type        = string
  description = "Address of the Vault instance to authenticate against"
  default     = "https://vault.net"
}

variable "TFC_VAULT_BACKED_GCP_AUTH" {
  type        = string
  description = "Enables vault backed dynamic credentials with GCP"
  default     = true
}

variable "TFC_VAULT_BACKED_GCP_AUTH_TYPE" {
  type        = string
  description = "Specifies the type of authentication to perform with GCP"
  default     = "static_account/service_account_key"
}
variable "TFC_VAULT_BACKED_GCP_MOUNT_PATH" {
  type        = string
  description = "The mount path of the GCP secrets engine in Vault."
  default     = "gcp-egdev-aut"
}

variable "TFC_VAULT_BACKED_GCP_RUN_VAULT_STATIC_ACCOUNT" {
  type        = string
  description = "The name of the static account in Vault."
  default     = "..."
}

variable "TFC_VAULT_RUN_ROLE" {
  type        = string
  description = "The name of the Vault role to authenticate against"
  default     = "..."
}
