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

provider "datadog" { 
  validate = true 
  api_key = var.datadog_api_key 
  app_key = var.datadog_app_key 
}

