resource "hcloud_server" "node" {
  name = "${var.server_name}"
  location = "nbg1"
  image = "${var.os_image}"
  server_type = "${var.server_type}"
  ssh_keys = ["${var.ssh_keys}"]
  
  labels = {
    author = "zikar"
    creator = "terraform"
    stage = "${var.stage}"
  }
}

resource "hcloud_server_network" "hsn_proj" {
  server_id = "${hcloud_server.node.id}"
  subnet_id = "${var.subnet_proj}"
}

resource "hcloud_server_network" "hsn_mng" {
  server_id  = "${hcloud_server.node.id}"
  subnet_id  = "${var.subnet_mng}"
}

resource "hcloud_volume" "vol2" {
	name = "vol2"
	location = "nbg1"
	size = "${var.vol2}"
}

resource "hcloud_volume_attachment" "v2att" {
	volume_id = "${hcloud_volume.vol2.id}"
	server_id = "${hcloud_server.node.id}"
	automount = true
}
