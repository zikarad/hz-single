output "bastion" {
  value = ["${module.bastion.ipv4_address}" , "${module.bastion.ipv6_address}"]
}
