provider "google" {
  credentials = file("/mnt/workspace/spacelift.oidc")
  project     = "seraphic-ripple-403315"
  region      = "europe-west1"
}

