output "log_analytics_linked_storage_accounts_id" {
  description = "Map of id values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "log_analytics_linked_storage_accounts_data_source_type" {
  description = "Map of data_source_type values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.data_source_type if v.data_source_type != null && length(v.data_source_type) > 0 }
}
output "log_analytics_linked_storage_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "log_analytics_linked_storage_accounts_storage_account_ids" {
  description = "Map of storage_account_ids values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.storage_account_ids if v.storage_account_ids != null && length(v.storage_account_ids) > 0 }
}
output "log_analytics_linked_storage_accounts_workspace_id" {
  description = "Map of workspace_id values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}
output "log_analytics_linked_storage_accounts_workspace_resource_id" {
  description = "Map of workspace_resource_id values across all log_analytics_linked_storage_accounts, keyed the same as var.log_analytics_linked_storage_accounts"
  value       = { for k, v in azurerm_log_analytics_linked_storage_account.log_analytics_linked_storage_accounts : k => v.workspace_resource_id if v.workspace_resource_id != null && length(v.workspace_resource_id) > 0 }
}

