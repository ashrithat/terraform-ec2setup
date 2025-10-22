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

resource "aws_instance" "imported_server" {
        ami = "ami-0199d4b5b8b4fde0e"
        instance_type = "t2.micro"
        subnet_id = "subnet-032ba554994e26a59"
        vpc_security_group_ids = [ "sg-052121cc0522de14e"]
        associate_public_ip_address = true

        tags = {
          Name = "addon-server"
        }
}
