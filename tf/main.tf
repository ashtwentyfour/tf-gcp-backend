resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "bucket" {
  name                     = "tfstate-${random_id.bucket_prefix.hex}"
  force_destroy            = false
  location                 = var.location
  storage_class            = "STANDARD"
  public_access_prevention = "enforced"
  versioning {
    enabled = true
  }
}