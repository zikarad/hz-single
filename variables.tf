variable "sshkey_path" {}
variable "hcloud_token" {}
variable node_type {
	description = "Type (size) of the node"
	default = "cx11"
}
variable "stage" {
	description = "Tier of service"
	default = "test"
}
variable "bastion_log_size" {
	default = 10
}
