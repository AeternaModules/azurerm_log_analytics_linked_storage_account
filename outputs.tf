output "log_analytics_linked_storage_accounts" {
  description = "All log_analytics_linked_storage_account resources"
  value       = azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts
}
output "log_analytics_linked_storage_accounts_data_source_type" {
  description = "List of data_source_type values across all log_analytics_linked_storage_accounts"
  value       = [for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : v.data_source_type]
}
output "log_analytics_linked_storage_accounts_resource_group_name" {
  description = "List of resource_group_name values across all log_analytics_linked_storage_accounts"
  value       = [for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : v.resource_group_name]
}
output "log_analytics_linked_storage_accounts_storage_account_ids" {
  description = "List of storage_account_ids values across all log_analytics_linked_storage_accounts"
  value       = [for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : v.storage_account_ids]
}
output "log_analytics_linked_storage_accounts_workspace_id" {
  description = "List of workspace_id values across all log_analytics_linked_storage_accounts"
  value       = [for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : v.workspace_id]
}
output "log_analytics_linked_storage_accounts_workspace_resource_id" {
  description = "List of workspace_resource_id values across all log_analytics_linked_storage_accounts"
  value       = [for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : v.workspace_resource_id]
}

