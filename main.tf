resource "google_storage_bucket" "my_bucket" {
  name     = "plsplsplsplsplswork"
  location = "US"
}

resource "google_sql_database_instance" "default" {
  name             = "example-instance"
  database_version = "MYSQL_5_7"

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      authorized_networks {
        name  = "all"
        value = "0.0.0.0/1"
      }
    }
  }
}

