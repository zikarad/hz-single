resource "hcloud_server" "node" {
  name = "${var.server_name}"
  location = "nbg1"
  image = "ubuntu-20.04"
  server_type = "${var.server_type}"
  ssh_keys = ["${var.ssh_keys}"]
  
  labels = {
    author = "zikar"
    creator = "terraform"
    stage = "test"
  }
}

resource "hcloud_server_network" "hsn1" {
  server_id = "${hcloud_server.node.id}"
  network_id = "${var.network}"
}
