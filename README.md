# hz-single
- module "vm-single" used
- 3 environments (prod, qa, test) each with 2 subnets
- 3 management nets, each with 1 subnet
- bastion in test env.
	- has 10g secondary drive
- output: creates inventory.ini, prints IPv4 and IPv6 addresses
