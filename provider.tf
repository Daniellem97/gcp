provider "google" {
  credentials = file("/mnt/workspace/gcp.json")
  project     = "seraphic-ripple-403315"
  region      = "europe-west1"
}

terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
    }
  }
}
