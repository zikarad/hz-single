variable "server_name" {
  description = "Name of the server"
}

variable "server_type" {
  description = "Type of instance (size)"
}

variable "ssh_keys" {
  description = "Keys for accessing the server"
}

variable "sshkey_path" {
  description = "Duplicated variable"
}

variable "network" {
	description = "Server network"
}
