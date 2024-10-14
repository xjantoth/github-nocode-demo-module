module "buckets" {
  source         = "github.com/GoogleCloudPlatform/cloud-foundation-fabric//modules/gcs?ref=v34.1.0"
  encryption_key = null
  labels = merge(
    var.labels,
    {
      "servicereq" = lower(terraform.workspace)
    }
  )
  location      = var.location
  name          = var.name
  project_id    = var.project_id
  prefix        = var.prefix
  storage_class = var.storage_class
  versioning    = var.versioning
}
