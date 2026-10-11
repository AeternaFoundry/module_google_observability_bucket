variable "observability_buckets" {
  description = <<EOT
Map of observability_buckets, attributes below
Required:
    - bucket_id
    - location
Optional:
    - description
    - display_name
    - project
    - cmek_settings (block):
        - kms_key (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    bucket_id    = string
    location     = string
    description  = optional(string)
    display_name = optional(string)
    project      = optional(string)
    cmek_settings = optional(object({
      kms_key = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

