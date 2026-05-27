# Configure the Google Cloud Provider
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "your-gcp-project-id" # ⚠️ Replace with your actual GCP Project ID
  region  = "us-central1"
}

# Safely check connection by fetching your existing project info
data "google_project" "connection_check" {}

# Print the project number to your screen if the connection succeeds
output "connection_status" {
  value = "Success! Connected to GCP Project Number: ${data.google_project.connection_check.number}"
}
