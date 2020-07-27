variable "stage" {
	description = "Tier of service"
}

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
  description = "Path to private ssh key"
}

variable "network" {
	description = "Server management network"
}

variable "vol2" {
	description = "Volume2 size"
	default = 50
}
