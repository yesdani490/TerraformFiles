resource "aws_instance" "countofinstances" {
    count = 1
    ami = var.myami
    instance_type = var.instance_names[count.index] == "MongoDB" || var.instance_names[count.index] == "mysql" ? "t3.micro" : "t2.micro"

    tags = {
      Name= var.instance_names[count.index]
    }
}

resource "aws_key_pair" "deployer" {
  key_name   = "teskeypair.pub"
  public_key = file("${path.module}/testkeypair.pub")
}
# resource "aws_route53_record" "record" {
#   count = 1
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.joindevops.top"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.countofinstances[count.index].private_ip]
# }

# "MongoDB", "Cart", "shipping", "mysql", "rabbitmq", "web", "user", "catalogue", "redis", "payments"  