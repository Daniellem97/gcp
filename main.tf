this is branch testingtask


resource "google_storage_bucket" "my_bucket" {
  name     = "plsplsplsplsplswork"
  location = "US"
labels = {
    app   = "your_app_value"
    infra = "your_infra_value"
  }
}

resource "google_storage_bucket" "my_bucket2" {
  name     = "plsplsplsplsplswork"
  location = "US"
labels = {
    app   = "your_app_value"
    infra = "your_infra_value"
  }
}

