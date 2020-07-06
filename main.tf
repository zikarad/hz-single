resource "hcloud_ssh_key" "default" {
  name = "Generic cloud key"
  public_key = "${file("${var.sshkey_path}")}"

  labels = {
    creator = "terraform"
    author = "zikar"
  }

}

resource "hcloud_server" "node1" {
  name = "bastion1"
  location = "nbg1"
  image = "ubuntu-20.04"
  server_type = "cx11"
  ssh_keys = ["${hcloud_ssh_key.default.id}"]
  
  labels = {
    creator = "terraform"
    author = "zikar"
  }
}

resource "hcloud_server_network" "hsn1" {
  server_id = "${hcloud_server.node1.id}"
  network_id = "${hcloud_network.srvnet1.id}"
}
