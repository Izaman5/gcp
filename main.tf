terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  region = "asia-northeast1"
  project ="astral-option-419300"
  zone = "asia-northeast1-a"
  credentials = "astral-option-419300-27d9d5cffd84.json"

}