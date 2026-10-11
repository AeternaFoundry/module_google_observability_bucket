resource "google_observability_bucket" "observability_buckets" {
  for_each = var.observability_buckets

  bucket_id    = each.value.bucket_id
  location     = each.value.location
  description  = each.value.description
  display_name = each.value.display_name
  project      = each.value.project

  dynamic "cmek_settings" {
    for_each = each.value.cmek_settings != null ? [each.value.cmek_settings] : []
    content {
      kms_key = cmek_settings.value.kms_key
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

