variable "org_id" {
  type        = string
  description = "The organization ID for this Terraform workspace."
}

variable "project_id" {
  type        = string
  description = "The project ID for this Terraform workspace."
}

variable "shared_vpc_access" {
  type = list(object({
    service_project_id = string
    user_subnet_map = map(object({
      subnet = string
      region = string
      user   = string
    }))
  }))
}