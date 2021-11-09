variable "host_project_id" {
  description = "Project ID of the Shared VPC Project"
  type        = string
}

variable "service_project_id" {
  description = "Project ID of the Service Project"
  type        = string
}

variable "user_subnet_map" {
  description = "Map of user to subnet they can use"
  type = map(object({
    subnet = string
    region = string
    user   = string
  }))
}