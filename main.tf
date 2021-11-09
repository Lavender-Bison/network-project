resource "google_compute_shared_vpc_host_project" "host" {
  project = var.project_id
}

resource "google_compute_network" "lavender_bison" {
  project                 = var.project_id
  name                    = "general"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "general_purpose_computation" {
  project       = var.project_id
  name          = "general-purpose-computation"
  ip_cidr_range = "10.0.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.lavender_bison.id
}

module "shared_vpc_access" {
  source = "./modules/shared-vpc-access"

  for_each = { for s in var.shared_vpc_access : s.service_project_id => s }

  host_project_id    = var.project_id
  service_project_id = each.value.service_project_id
  user_subnet_map    = each.value.user_subnet_map

  depends_on = [
    google_compute_shared_vpc_host_project.host,
    google_compute_network.lavender_bison,
    google_compute_subnetwork.general_purpose_computation,
  ]
}