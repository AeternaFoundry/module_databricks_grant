variable "grants" {
  description = <<EOT
Map of grants, attributes below
Required:
    - principal
    - privileges
Optional:
    - catalog
    - credential
    - external_location
    - foreign_connection
    - function
    - mcp_service
    - metastore
    - model
    - model_provider_service
    - model_service
    - pipeline
    - recipient
    - schema
    - secret
    - share
    - storage_credential
    - table
    - volume
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    principal              = string
    privileges             = set(string)
    catalog                = optional(string)
    credential             = optional(string)
    external_location      = optional(string)
    foreign_connection     = optional(string)
    function               = optional(string)
    mcp_service            = optional(string)
    metastore              = optional(string)
    model                  = optional(string)
    model_provider_service = optional(string)
    model_service          = optional(string)
    pipeline               = optional(string)
    recipient              = optional(string)
    schema                 = optional(string)
    secret                 = optional(string)
    share                  = optional(string)
    storage_credential     = optional(string)
    table                  = optional(string)
    volume                 = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

