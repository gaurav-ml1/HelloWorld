# Create a standard Cloud Storage Bucket
resource "google_storage_bucket" "my_storage_bucket" {
  name          = "my-unique-test-bucket-998877" # ⚠️ Replace with a globally unique name
  location      = "US"
  force_destroy = true                          # Automatically cleans up files when you run destroy

  uniform_bucket_level_access = true
}

# Print the bucket URL to your screen after creation
output "bucket_url" {
  value = google_storage_bucket.my_storage_bucket.url
}
