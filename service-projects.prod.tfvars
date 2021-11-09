shared_vpc_access = [
  {
    service_project_id = "example-prod-b68227",
    user_subnet_map = {
      compute_default_service_account = {
        subnet = "general"
        region = "us-central1"
        user   = "serviceAccount:946152399515-compute@developer.gserviceaccount.com"
      }
    }
  }
]