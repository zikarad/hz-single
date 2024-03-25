### TEST networks + subnets

resource "hcloud_network" "testNet1" {
  name = "testNet1"
  ip_range = "10.3.0.0/16"

	labels = {
    author = "zikar"
		creator = "terraform"
		span = "cloud"
    stage = "test"
	}
}

resource "hcloud_network" "testMng" {
  name = "testMng"
  ip_range = "10.130.0.0/16"

	labels = {
    author = "zikar"
		creator = "terraform"
		span = "cloud"
    stage = "test"
	}
}

resource "hcloud_network_subnet" "testMng" {
  network_id = "${hcloud_network.testMng.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.130.0.0/16"
}

resource "hcloud_network_subnet" "test1pr1priv" {
  network_id = "${hcloud_network.testNet1.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.3.1.0/25"
}

resource "hcloud_network_subnet" "test1pr1pub" {
  network_id = "${hcloud_network.testNet1.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.3.1.128/25"
}
