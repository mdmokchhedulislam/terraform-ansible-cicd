output "bastion_publicip" {
    value = aws_instance.bastion_host.public_ip
  
}