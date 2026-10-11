variable "cloud_azure_link_accounts" {
  description = <<EOT
Map of cloud_azure_link_accounts, attributes below
Required:
    - application_id
    - client_secret
    - name
    - subscription_id
    - tenant_id
Optional:
    - account_id
EOT

  type = map(object({
    application_id  = string
    client_secret   = string
    name            = string
    subscription_id = string
    tenant_id       = string
    account_id      = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_azure_link_accounts : (
        length(v.application_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloud_azure_link_accounts : (
        length(v.client_secret) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloud_azure_link_accounts : (
        length(v.subscription_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloud_azure_link_accounts : (
        length(v.tenant_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

