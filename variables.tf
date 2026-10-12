variable "storage_lifecycle_policies" {
  description = <<EOT
Map of storage_lifecycle_policies, attributes below
Required:
    - body
    - database
    - name
    - schema
    - argument (block):
        - name (required)
        - type (required)
Optional:
    - archive_for_days
    - archive_tier
    - comment
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    body             = string
    database         = string
    name             = string
    schema           = string
    archive_for_days = optional(number)
    archive_tier     = optional(string)
    comment          = optional(string)
    argument = list(object({
      name = string
      type = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_lifecycle_policies : (
        length(v.argument) >= 1
      )
    ])
    error_message = "Each argument list must contain at least 1 items"
  }
}

