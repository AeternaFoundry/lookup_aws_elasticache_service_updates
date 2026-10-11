output "elasticache_service_updates_lookup_region" {
  description = "Map of region values across all elasticache_service_updates_lookup, keyed the same as var.elasticache_service_updates_lookup"
  value       = { for k, v in data.aws_elasticache_service_updates.elasticache_service_updates_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "elasticache_service_updates_lookup_service_updates" {
  description = "Map of service_updates values across all elasticache_service_updates_lookup, keyed the same as var.elasticache_service_updates_lookup"
  value       = { for k, v in data.aws_elasticache_service_updates.elasticache_service_updates_lookup : k => v.service_updates if v.service_updates != null && length(v.service_updates) > 0 }
}
output "elasticache_service_updates_lookup_status" {
  description = "Map of status values across all elasticache_service_updates_lookup, keyed the same as var.elasticache_service_updates_lookup"
  value       = { for k, v in data.aws_elasticache_service_updates.elasticache_service_updates_lookup : k => v.status if v.status != null && length(v.status) > 0 }
}

