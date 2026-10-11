output "cloud_azure_link_accounts_id" {
  description = "Map of id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts except keys with no id are omitted"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_azure_link_accounts_account_id" {
  description = "Map of account_id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts except keys with no account_id are omitted"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.account_id if v.account_id != null }
}
output "cloud_azure_link_accounts_application_id" {
  description = "Map of application_id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts except keys with no application_id are omitted"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
  sensitive   = true
}
output "cloud_azure_link_accounts_client_secret" {
  description = "Map of client_secret values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts except keys with no client_secret are omitted"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "cloud_azure_link_accounts_name" {
  description = "Map of name values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts except keys with no name are omitted"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_azure_link_accounts_subscription_id" {
  description = "Map of subscription_id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts except keys with no subscription_id are omitted"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
  sensitive   = true
}
output "cloud_azure_link_accounts_tenant_id" {
  description = "Map of tenant_id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts except keys with no tenant_id are omitted"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
  sensitive   = true
}

