variable "stage" {
	description = "Tier of service"
}

variable "server_name" {
  description = "Name of the server"
}

variable "server_type" {
  description = "Type of instance (size)"
}

variable "os_image" {
	description = "OS distribution image"
	default = "ubuntu-22.04"
}

variable "ssh_keys" {
  description = "Keys for accessing the server"
}

variable "sshkey_path" {
  description = "Path to private ssh key"
}

variable "subnet_mng" {
	description = "Server management subnet"
}

variable "subnet_proj" {
	description = "Server project subnet"
}

variable "vol2" {
	description = "Volume2 size"
	default = 50
}

variable "hcloud_token" {
  type = string
}
