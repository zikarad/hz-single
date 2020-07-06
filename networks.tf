resource "hcloud_network" "srvnet1" {
  name = "srvNet1"
  ip_range = "10.1.0.0/24"

	labels = {
		creator = "terraform"
    author = "zikar"
	}
}

resource "hcloud_network_subnet" "srvnet1_p1" {
  network_id = "${hcloud_network.srvnet1.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.1.0.0/25"
}


resource "hcloud_network" "proj1" {
  name = "proj1"
  ip_range = "10.1.1.0/24"
}

resource "hcloud_network_subnet" "priv1" {
  network_id = "${hcloud_network.proj1.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.1.1.0/25"
}

resource "hcloud_network_subnet" "priv2" {
  network_id = "${hcloud_network.proj1.id}"
  network_zone = "eu-central"
  type = "cloud"
  ip_range = "10.1.1.128/25"
}
