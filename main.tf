provider "google" {
  project = "prefab-faculty-438111-k7"  # Replace with your GCP project ID
  region  = "us-central1"          # Replace with your preferred region
}

resource "google_storage_bucket" "amitpawar65_bucket" {
  name     = "amitpawar65"         # The bucket name must be globally unique
  location = "US"                  # Location where your bucket will be created

  # Optional: Add any bucket configurations you need
  force_destroy = true             # Set to true if you want to delete all objects when destroying the bucket
}

