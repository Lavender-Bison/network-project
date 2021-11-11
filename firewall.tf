resource "google_compute_firewall" "allow_build_ssh" {
  name    = "allow-build-ssh"
  network = google_compute_network.lavender_bison.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["build-machine-ssh"]

  # Calls from Github Action pipelines should only be able to SSH into the build network.
  destination_ranges = ["10.10.0.0/16"]

}