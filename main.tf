resource "google_storage_bucket" "my_bucket" {
  name     = "plsplsplsplsplswork"
  location = "US"
labels = {
    app   = "your_app_value"
    infra = "your_infra_value"
  }
}
