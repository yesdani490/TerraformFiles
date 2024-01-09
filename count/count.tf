resource "aws_instance" "countofinstances" {

    ami = var.myami
    instance_type = "t2.micro"
    count = 10
    tags = {
      name= "Roboshop"
    }
}