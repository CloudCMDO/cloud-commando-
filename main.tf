provider "google" {
  project = "prefab-faculty-438111-k7"
  region  = "us-central1"
}
resource "google_storage_bucket" "amitpawar65_bucket" {
  name     = "Cloud commando"         
  location = "US"                  
  force_destroy = true             
}
