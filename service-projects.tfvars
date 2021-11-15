shared_vpc_access = [
  {
    service_project_id = "example-dev-4c39ae",
    user_subnet_map = {
      build = {
        subnet = "general-purpose-computation-dev"
        region = "us-central1"
        user   = "serviceAccount:github-workflow@example-dev-4c39ae.iam.gserviceaccount.com"
      }
      compute = {
        subnet = "general-purpose-computation-dev"
        region = "us-central1"
        user   = "serviceAccount:134926683163@cloudservices.gserviceaccount.com"
      }
    }
  },
  {
    service_project_id = "example-qa-212553",
    user_subnet_map = {
      build = {
        subnet = "general-purpose-computation-qa"
        region = "us-central1"
        user   = "serviceAccount:github-workflow@example-qa-212553.iam.gserviceaccount.com"
      }
      compute = {
        subnet = "general-purpose-computation-qa"
        region = "us-central1"
        user   = "serviceAccount:637868582072@cloudservices.gserviceaccount.com"
      }
    }
  },
  {
    service_project_id = "example-prod-b68227",
    user_subnet_map = {
      build = {
        subnet = "general-purpose-computation-prod"
        region = "us-central1"
        user   = "serviceAccount:github-workflow@example-prod-b68227.iam.gserviceaccount.com"
      }
      compute = {
        subnet = "general-purpose-computation-prod"
        region = "us-central1"
        user   = "serviceAccount:946152399515@cloudservices.gserviceaccount.com"
      }
    }
  }
]