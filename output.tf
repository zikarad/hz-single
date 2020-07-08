output "bastion" {
  value = ["${module.bastion-test.ipv4_address}" , "${module.bastion-test.ipv6_address}"]
}
