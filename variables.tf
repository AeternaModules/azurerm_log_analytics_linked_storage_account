variable "log_analytics_linked_storage_accounts" {
  description = <<EOT
Map of log_analytics_linked_storage_accounts, attributes below
Required:
    - data_source_type
    - resource_group_name
    - storage_account_ids
Optional:
    - workspace_id
    - workspace_resource_id
EOT

  type = map(object({
    data_source_type      = string
    resource_group_name   = string
    storage_account_ids   = set(string)
    workspace_id          = optional(string)
    workspace_resource_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_linked_storage_accounts : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_linked_storage_accounts : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_linked_storage_accounts : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

