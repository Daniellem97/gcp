provider "google" {
  credentials = file("/mnt/workspace/gcp.json")
  project     = "optimum-essence-391617"
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
validate = false
api_url = "https://api.datadoghq.eu/"
}

output "file_path" {
  value = "/mnt/workspace/gcp.json"
}
