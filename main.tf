resource "google_storage_bucket" "my_bucket" {
  name     = "plsplsplsplsplswork"
  location = "US"
}

resource "google_project_iam_policy" "project" {
  project     = "your-project-id"
  policy_data = data.google_iam_policy.admin.policy_data
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/editor"

    members = [
      "user:jane@example.com",
    ]
  }
}

resource "google_sql_database_instance" "example" {
  name             = "example-instance"
  database_version = "MYSQL_5_7"
  region           = "us-central1" # Change this to your desired region

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      ipv4_enabled    = true
      authorized_networks {
        name    = "private-network"
        value   = "0.0.0.0/0"  # Example CIDR block for your private network
      }
    }
  }
}

resource "google_sql_database" "example" {
  name     = "example-database"
  instance = google_sql_database_instance.example.name
}

