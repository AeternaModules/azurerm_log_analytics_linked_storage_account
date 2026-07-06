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
  # --- Unconfirmed validation candidates, derived from azurerm_log_analytics_linked_storage_account's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: data_source_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: workspace_id
  #   source:    [from linkedstorageaccounts.ValidateWorkspaceID] !ok
  # path: workspace_id
  #   source:    [from linkedstorageaccounts.ValidateWorkspaceID] err != nil
  # path: storage_account_ids[*]
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_ids[*]
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
}

