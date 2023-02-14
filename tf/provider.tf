provider "google" {
  region  = var.region
  project = var.project
  credentials = "${file(./gcp/key-file.json)}"
  project = var.project
}