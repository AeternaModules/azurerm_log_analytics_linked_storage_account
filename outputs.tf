output "log_analytics_linked_storage_accounts_data_source_type" {
  description = "Map of data_source_type values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.data_source_type }
}
output "log_analytics_linked_storage_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.resource_group_name }
}
output "log_analytics_linked_storage_accounts_storage_account_ids" {
  description = "Map of storage_account_ids values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.storage_account_ids }
}
output "log_analytics_linked_storage_accounts_workspace_id" {
  description = "Map of workspace_id values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.workspace_id }
}
output "log_analytics_linked_storage_accounts_workspace_resource_id" {
  description = "Map of workspace_resource_id values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.workspace_resource_id }
}

