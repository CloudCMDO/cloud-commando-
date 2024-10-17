provider "google" {
  project = "prefab-faculty-438111-k7"
  region  = "us-central1"
}
resource "google_storage_bucket" "amitpawar65_bucket" {
  name     = "amitpawar65"         
  location = "US"                  
  force_destroy = true             
}
