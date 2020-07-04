output "id" {
  value       = local.id
  description = "Disambiguated ID."
}

output "namespace" {
  value       = local.namespace
  description = "Normalized namespace."
}

output "environment" {
  value       = local.environment
  description = "Normalized environment."
}

output "business_owner" {
  value       = local.business_owner
  description = "Normalized billing tag."
}

output "application" {
  value       = local.application
  description = "Normalized application."
}

output "board" {
  value       = local.board
  description = "Normalized board."
}

output "service" {
  value       = local.service
  description = "Normalized service."
}

output "delimiter" {
  value       = local.delimiter
  description = "Delimiter between `namespace`, `stage`, `name` and `attributes`."
}

output "attributes" {
  value       = local.attributes
  description = "Normalized attributes."
}

output "domain_name" {
  value       = local.domain_name
  description = "Domain name to be used on Route 53 DNS records."
}

output "tags" {
  value       = local.tags
  description = "Normalized Tag map."
}