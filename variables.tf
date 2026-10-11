variable "online_tables" {
  description = <<EOT
Map of online_tables, attributes below
Required:
    - name
Optional:
    - provider_config (block):
        - workspace_id (optional)
    - spec (block):
        - perform_full_copy (optional)
        - primary_key_columns (optional)
        - run_continuously (optional, block):
        - run_triggered (optional, block):
        - source_table_full_name (optional)
        - timeseries_key (optional)
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    name = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    spec = optional(object({
      perform_full_copy   = optional(bool)
      primary_key_columns = optional(list(string))
      run_continuously = optional(object({
      }))
      run_triggered = optional(object({
      }))
      source_table_full_name = optional(string)
      timeseries_key         = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

