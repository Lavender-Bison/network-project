shared_vpc_access = [
  {
    service_project_id = "example-prod-b68227",
    user_subnet_map = {
      compute = {
        subnet = "general"
        region = "us-central1"
        user   = "serviceAccount:946152399515-compute@developer.gserviceaccount.com"
      }
    }
  }
]