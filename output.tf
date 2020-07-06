output "public_ip" {
  value = ["${hcloud_server.node1.name}" , "${hcloud_server.node1.ipv4_address}", "${hcloud_server.node1.ipv6_address}"]
}
