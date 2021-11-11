resource "google_compute_firewall" "allow_build_ssh" {
  name    = "allow-build-ssh"
  network = google_compute_network.lavender_bison.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["build-machine-ssh"]

  # Potential Improvement:
  # - Create a different subnet for build machines.
  # - Limit destinations to the CIDR range of the subnet.

}