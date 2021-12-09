resource "google_dns_managed_zone" "lavender_bison" {
  name        = "lavenderbison"
  dns_name    = "lavenderbison.com."
  description = "Primary DNS Zone"

}

// Pointing to the load balancer for the example.lavenderbison.com application.
resource "google_dns_record_set" "example_lb_ip" {

  name = "example-d.lavenderbison.com."
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.lavender_bison.name

  rrdatas = [
    "34.149.184.214"
  ]
}