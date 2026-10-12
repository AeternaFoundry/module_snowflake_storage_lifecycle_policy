output "storage_lifecycle_policies_id" {
  description = "Map of id values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no id are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_lifecycle_policies_archive_for_days" {
  description = "Map of archive_for_days values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no archive_for_days are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.archive_for_days if v.archive_for_days != null }
}
output "storage_lifecycle_policies_archive_tier" {
  description = "Map of archive_tier values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no archive_tier are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.archive_tier if v.archive_tier != null && length(v.archive_tier) > 0 }
}
output "storage_lifecycle_policies_argument" {
  description = "Map of argument values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no argument are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.argument if v.argument != null && length(v.argument) > 0 }
}
output "storage_lifecycle_policies_body" {
  description = "Map of body values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no body are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.body if v.body != null && length(v.body) > 0 }
}
output "storage_lifecycle_policies_comment" {
  description = "Map of comment values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no comment are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "storage_lifecycle_policies_database" {
  description = "Map of database values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no database are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.database if v.database != null && length(v.database) > 0 }
}
output "storage_lifecycle_policies_describe_output" {
  description = "Map of describe_output values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "storage_lifecycle_policies_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "storage_lifecycle_policies_name" {
  description = "Map of name values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no name are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_lifecycle_policies_schema" {
  description = "Map of schema values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no schema are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "storage_lifecycle_policies_show_output" {
  description = "Map of show_output values across all storage_lifecycle_policies, keyed the same as var.storage_lifecycle_policies except keys with no show_output are omitted"
  value       = { for k, v in snowflake_storage_lifecycle_policy.storage_lifecycle_policies : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

