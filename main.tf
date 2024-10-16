resource "google_storage_bucket" "my-bucket2" {
  name                     = "tt-githubdemo-bucket-003"
  project                  = "tt-dev-001"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"
}
