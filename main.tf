resource "hcloud_ssh_key" "default" {
  name = "Generic cloud key"
  public_key = "${file("${var.sshkey_path}")}"

  labels = {
    creator = "terraform"
    author = "zikar"
  }
}


module "bastion-test" {
  source = "modules/vm-single"

  server_name = "bastion-test"
  server_type = "cx11"
  sshkey_path = "${var.sshkey_path}"
  ssh_keys = "${hcloud_ssh_key.default.id}"
	network = "${hcloud_network.testMng.id}"
}
