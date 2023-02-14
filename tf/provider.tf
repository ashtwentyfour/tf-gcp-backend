provider "google" {
  region  = var.region
  project = var.project
  credentials = "./gcp/key-file.json"
}