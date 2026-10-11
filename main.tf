resource "newrelic_cloud_azure_link_account" "cloud_azure_link_accounts" {
  for_each = var.cloud_azure_link_accounts

  application_id  = each.value.application_id
  client_secret   = each.value.client_secret
  name            = each.value.name
  subscription_id = each.value.subscription_id
  tenant_id       = each.value.tenant_id
  account_id      = each.value.account_id
}

