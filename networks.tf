### PRODUCTION VLAN + 3 subnets

resource "hcloud_network" "prodNet1" {
  name = "prodNet1"
  ip_range = "10.1.0.0/16"

	labels = {
    author = "zikar"
		creator = "terraform"
		span = "cloud"
    stage = "prod"
	}
}

resource "hcloud_network" "prodMng" {
  name = "prodMng"
  ip_range = "10.128.0.0/16"

	labels = {
    author = "zikar"
		creator = "terraform"
		span = "cloud"
    stage = "prod"
	}
}

resource "hcloud_network_subnet" "prodMng" {
  network_id = "${hcloud_network.prodMng.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.128.0.0/16"
}

resource "hcloud_network_subnet" "prod1pr1priv" {
  network_id = "${hcloud_network.prodNet1.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.1.1.0/25"
}

resource "hcloud_network_subnet" "prod1pr1pub" {
  network_id = "${hcloud_network.prodNet1.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.1.1.128/25"
}

### QA VLAN + 2 subnets

resource "hcloud_network" "qaNet1" {
  name = "qaNet1"
  ip_range = "10.2.0.0/16"

	labels = {
    author = "zikar"
		creator = "terraform"
		span = "cloud"
    stage = "qa"
	}
}

resource "hcloud_network" "qaMng" {
  name = "qaMng"
  ip_range = "10.129.0.0/16"

	labels = {
    author = "zikar"
		creator = "terraform"
		span = "cloud"
    stage = "qa"
	}
}

resource "hcloud_network_subnet" "qaMng" {
  network_id= "${hcloud_network.qaMng.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.129.0.0/16"
}

resource "hcloud_network_subnet" "qa1pr1priv" {
  network_id = "${hcloud_network.qaNet1.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.2.1.0/25"
}

resource "hcloud_network_subnet" "qa1pr1pub" {
  network_id = "${hcloud_network.qaNet1.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.2.1.128/25"
}

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
