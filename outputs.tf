output "online_tables_id" {
  description = "Map of id values across all online_tables, keyed the same as var.online_tables except keys with no id are omitted"
  value       = { for k, v in databricks_online_table.online_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "online_tables_name" {
  description = "Map of name values across all online_tables, keyed the same as var.online_tables except keys with no name are omitted"
  value       = { for k, v in databricks_online_table.online_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "online_tables_provider_config" {
  description = "Map of provider_config values across all online_tables, keyed the same as var.online_tables except keys with no provider_config are omitted"
  value       = { for k, v in databricks_online_table.online_tables : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "online_tables_spec" {
  description = "Map of spec values across all online_tables, keyed the same as var.online_tables except keys with no spec are omitted"
  value       = { for k, v in databricks_online_table.online_tables : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}
output "online_tables_status" {
  description = "Map of status values across all online_tables, keyed the same as var.online_tables except keys with no status are omitted"
  value       = { for k, v in databricks_online_table.online_tables : k => v.status if v.status != null && length(v.status) > 0 }
}
output "online_tables_table_serving_url" {
  description = "Map of table_serving_url values across all online_tables, keyed the same as var.online_tables except keys with no table_serving_url are omitted"
  value       = { for k, v in databricks_online_table.online_tables : k => v.table_serving_url if v.table_serving_url != null && length(v.table_serving_url) > 0 }
}
output "online_tables_unity_catalog_provisioning_state" {
  description = "Map of unity_catalog_provisioning_state values across all online_tables, keyed the same as var.online_tables except keys with no unity_catalog_provisioning_state are omitted"
  value       = { for k, v in databricks_online_table.online_tables : k => v.unity_catalog_provisioning_state if v.unity_catalog_provisioning_state != null && length(v.unity_catalog_provisioning_state) > 0 }
}

