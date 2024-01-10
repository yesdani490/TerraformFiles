output "private-ip" {
    value = aws_instance.countofinstances[*].private_ip
  
}