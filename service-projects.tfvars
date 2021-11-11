shared_vpc_access = [
  {
    service_project_id = "example-dev-4c39ae",
    user_subnet_map = {
      compute = {
        subnet = "general-purpose-computation-dev"
        region = "us-central1"
        user   = "serviceAccount:134926683163-compute@developer.gserviceaccount.com"
      }
    }
  },
  {
    service_project_id = "example-qa-212553",
    user_subnet_map = {
      compute = {
        subnet = "general-purpose-computation-qa"
        region = "us-central1"
        user   = "serviceAccount:637868582072-compute@developer.gserviceaccount.com"
      }
    }
  },
  {
    service_project_id = "example-prod-b68227",
    user_subnet_map = {
      compute = {
        subnet = "general-purpose-computation-prod"
        region = "us-central1"
        user   = "serviceAccount:946152399515-compute@developer.gserviceaccount.com"
      }
    }
  }
]