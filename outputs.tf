
output "instance_public_ips" {
  value = { for k, v in aws_instance.servers : k => v.public_ip }
}

output "instance_ids" {
  value = { for k, v in aws_instance.servers : k => v.id }
}
