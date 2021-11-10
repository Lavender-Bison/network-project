resource "google_compute_firewall" "allow_packer_build_machine_ssh" {
  name    = "allow-packer-build-machine-ssh"
  network = google_compute_network.general.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["packer-build-machine"]
}