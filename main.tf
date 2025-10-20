
provider "aws" {
        region = var.region
}

resource "aws_instance" "servers" {
        for_each = {for inst in var.instances : inst.name => inst}

        ami = each.value.ami
        instance_type = each.value.instance_type
        subnet_id = each.value.subnet_id
        associate_public_ip_address = true

        tags = {
                Name = each.value.name
        }
}
