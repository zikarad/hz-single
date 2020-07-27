resource "hcloud_ssh_key" "default" {
  name = "Generic cloud key"
  public_key = "${file("${var.sshkey_path}")}"

  labels = {
    creator = "terraform"
    author  = "zikar"
		stage   = "${var.stage}"
  }
}


module "bastion" {
  source = "modules/vm-single"

  stage = "${var.stage}"
  server_name = "bastion-${var.stage}"
  server_type = "${var.node_type}"
  sshkey_path = "${var.sshkey_path}"
	vol2 = "${var.bastion_log_size}"
  ssh_keys = "${hcloud_ssh_key.default.id}"
	network = "${hcloud_network.testMng.id}"
}
