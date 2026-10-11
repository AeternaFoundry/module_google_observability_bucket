output "observability_buckets_id" {
  description = "Map of id values across all observability_buckets, keyed the same as var.observability_buckets except keys with no id are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "observability_buckets_bucket_id" {
  description = "Map of bucket_id values across all observability_buckets, keyed the same as var.observability_buckets except keys with no bucket_id are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.bucket_id if v.bucket_id != null && length(v.bucket_id) > 0 }
}
output "observability_buckets_cmek_settings" {
  description = "Map of cmek_settings values across all observability_buckets, keyed the same as var.observability_buckets except keys with no cmek_settings are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => one(v.cmek_settings) if v.cmek_settings != null && length(v.cmek_settings) > 0 }
}
output "observability_buckets_create_time" {
  description = "Map of create_time values across all observability_buckets, keyed the same as var.observability_buckets except keys with no create_time are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "observability_buckets_delete_time" {
  description = "Map of delete_time values across all observability_buckets, keyed the same as var.observability_buckets except keys with no delete_time are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.delete_time if v.delete_time != null && length(v.delete_time) > 0 }
}
output "observability_buckets_description" {
  description = "Map of description values across all observability_buckets, keyed the same as var.observability_buckets except keys with no description are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "observability_buckets_display_name" {
  description = "Map of display_name values across all observability_buckets, keyed the same as var.observability_buckets except keys with no display_name are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "observability_buckets_location" {
  description = "Map of location values across all observability_buckets, keyed the same as var.observability_buckets except keys with no location are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.location if v.location != null && length(v.location) > 0 }
}
output "observability_buckets_name" {
  description = "Map of name values across all observability_buckets, keyed the same as var.observability_buckets except keys with no name are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "observability_buckets_project" {
  description = "Map of project values across all observability_buckets, keyed the same as var.observability_buckets except keys with no project are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.project if v.project != null && length(v.project) > 0 }
}
output "observability_buckets_purge_time" {
  description = "Map of purge_time values across all observability_buckets, keyed the same as var.observability_buckets except keys with no purge_time are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.purge_time if v.purge_time != null && length(v.purge_time) > 0 }
}
output "observability_buckets_update_time" {
  description = "Map of update_time values across all observability_buckets, keyed the same as var.observability_buckets except keys with no update_time are omitted"
  value       = { for k, v in google_observability_bucket.observability_buckets : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

