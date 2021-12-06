resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.lavender_bison.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["build-machine-ssh", "ansible-ssh"]

  # Potential Improvement:
  # - Create a different subnet for build machines.
  # - Limit destinations to the CIDR range of the subnet.

}

resource "google_compute_firewall" "allow_web" {
  name    = "allow-web"
  network = google_compute_network.lavender_bison.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["web-server"]

}
