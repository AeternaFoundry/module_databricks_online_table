resource "databricks_online_table" "online_tables" {
  for_each = var.online_tables

  name = each.value.name

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "spec" {
    for_each = each.value.spec != null ? [each.value.spec] : []
    content {
      perform_full_copy   = spec.value.perform_full_copy
      primary_key_columns = spec.value.primary_key_columns
      dynamic "run_continuously" {
        for_each = spec.value.run_continuously != null ? [spec.value.run_continuously] : []
        content {
        }
      }
      dynamic "run_triggered" {
        for_each = spec.value.run_triggered != null ? [spec.value.run_triggered] : []
        content {
        }
      }
      source_table_full_name = spec.value.source_table_full_name
      timeseries_key         = spec.value.timeseries_key
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

