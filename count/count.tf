resource "aws_instance" "countofinstances" {
    count = 10
    ami = var.myami
    instance_type = var.instance-name[count.index] == "MongoDB" || var.instance-name[count.index] == "mysql" ? "t3.micro" : "t2.micro"
    
    tags = {
      name= var.instance-name[count.index]
    }
}

resource "aws_route53_record" "record" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.instance-name[count.index]}.joindevops.top"
  type    = "A"
  ttl     = 1
  records = [aws_instance.countofinstances[count.index].private_ip]
}

# "MongoDB", "Cart", "shipping", "mysql", "rabbitmq", "web", "user", "catalogue", "redis", "payments"  