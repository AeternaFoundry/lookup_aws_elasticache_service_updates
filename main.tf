data "aws_elasticache_service_updates" "elasticache_service_updates_lookup" {
  for_each = var.elasticache_service_updates_lookup

  region = each.value.region
  status = each.value.status
}

