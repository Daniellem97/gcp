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

resource "google_cloud_instance" "default" {
  name             = "example-instance"
  database_version = "MYSQL_5_7"

	@@ -13,7 +13,7 @@ resource "google_sql_database_instance" "default" {
    ip_configuration {
      authorized_networks {
        name  = "all"
        value = "0.0.0.0/0"
      }
    }
  }
