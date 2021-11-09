/*************************************************************************************
  Create the service project to host project relationship
 *************************************************************************************/
resource "google_compute_shared_vpc_service_project" "project" {
  host_project    = var.host_project_id
  service_project = var.service_project_id
}

/*************************************************************************************
  Attach to one or more shared VPC subnets
 *************************************************************************************/
resource "google_compute_subnetwork_iam_member" "network_user" {
  for_each   = var.user_subnet_map
  project    = var.host_project_id
  region     = each.value["region"]
  subnetwork = each.value["subnet"]
  role       = "roles/compute.networkUser"
  member     = each.value["user"]
}