resource "snowflake_storage_lifecycle_policy" "storage_lifecycle_policies" {
  for_each = var.storage_lifecycle_policies

  body             = each.value.body
  database         = each.value.database
  name             = each.value.name
  schema           = each.value.schema
  archive_for_days = each.value.archive_for_days
  archive_tier     = each.value.archive_tier
  comment          = each.value.comment

  dynamic "argument" {
    for_each = each.value.argument
    content {
      name = argument.value.name
      type = argument.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

