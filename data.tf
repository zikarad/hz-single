data "template_file" "test_hosts" {

	template = "${file("templates/inventory.tmpl")}"
	
	depends_on = [
		module.bastion
	]

	vars = {
		bastion_name      = module.bastion.node_name
		bastion_public_ip = module.bastion.ipv4_address
	}
}

resource "null_resource" "dev-hosts" {

	triggers = {
		template_rendered = data.template_file.test_hosts.rendered
	}

	provisioner "local-exec" {
		command = "echo '${data.template_file.test_hosts.rendered}' > inventory.ini"		
	}
}
