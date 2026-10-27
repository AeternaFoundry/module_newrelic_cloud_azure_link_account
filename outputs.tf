output "cloud_azure_link_accounts_id" {
  description = "Map of id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.id }
}
output "cloud_azure_link_accounts_account_id" {
  description = "Map of account_id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.account_id }
}
output "cloud_azure_link_accounts_application_id" {
  description = "Map of application_id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.application_id }
  sensitive   = true
}
output "cloud_azure_link_accounts_client_secret" {
  description = "Map of client_secret values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.client_secret }
  sensitive   = true
}
output "cloud_azure_link_accounts_name" {
  description = "Map of name values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.name }
}
output "cloud_azure_link_accounts_subscription_id" {
  description = "Map of subscription_id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.subscription_id }
  sensitive   = true
}
output "cloud_azure_link_accounts_tenant_id" {
  description = "Map of tenant_id values across all cloud_azure_link_accounts, keyed the same as var.cloud_azure_link_accounts"
  value       = { for k, v in newrelic_cloud_azure_link_account.cloud_azure_link_accounts : k => v.tenant_id }
  sensitive   = true
}

