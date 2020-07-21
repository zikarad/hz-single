variable "sshkey_path" {}
variable "hcloud_token" {}
variable node_type {
	description = "Type (size) of the node"
	default = "cx11"
}
