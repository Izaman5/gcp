terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.27.0"
    }
  }
}
provider "google" {
# Configuration options
project = "********"
region = "asia-northeast1"
zone = "asia-northeast1-a"
credentials = "*******.json"
}
#make bucket
resource "google_storage_bucket" "GBB" {
name = "get_buckets_bucket"
location = "asia-northeast1"
storage_class = "STANDARD"
force_destroy = true

}
resource "google_storage_bucket_access_control" "public_rule" {
  bucket = google_storage_bucket.GBB.name
  role   = "READER"
  entity = "allUsers"
}

resource "google_storage_bucket_object" "index" {
name = "index.html"  
source = "index.html"
bucket =  google_storage_bucket.GBB.name
content_type = "text/html"
}



