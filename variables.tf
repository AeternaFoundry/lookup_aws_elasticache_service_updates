variable "elasticache_service_updates_lookup" {
  description = <<EOT
Map of elasticache_service_updates_lookup, attributes below
Optional:
    - region
    - status
EOT

  type = map(object({
    region = optional(string)
    status = optional(set(string))
  }))
}

