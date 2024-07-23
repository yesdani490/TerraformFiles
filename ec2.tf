resource "aws_instance" "roboshop" {
  for_each = var.instances
  ami = var.myami
  instance_type = each.value
  tags = {
    Name = each.key
  }

}

# output "aws_instance" {
#     value = aws_instance.roboshop
  
# }



  

resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [each.key == "Web" ? each.value.public_ip : each.value.private_ip]

}