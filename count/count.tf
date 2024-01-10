resource "aws_instance" "countofinstances" {
    count = 10
    ami = var.myami
    instance_type = var.instance-name[count.index] == "MongoDB" ? "t3.micro" : "t2.micro"
    
    tags = {
      name= var.instance-name[count.index]
    }
}

# "MongoDB", "Cart", "shipping", "mysql", "rabbitmq", "web", "user", "catalogue", "redis", "payments"  