output "node_name" {
	value = "${hcloud_server.node.name}"
}

output "ipv4_address" {
  value = "${hcloud_server.node.ipv4_address}"
}

output "ipv6_address" {
  value = "${hcloud_server.node.ipv6_address}"
}
