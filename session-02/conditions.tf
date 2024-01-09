resource "aws_instance" "conditions" {
    
    ami = var.myami
    instance_type = var.myinstancename == "MongoDB" ? "t3.medium" : "t2.medium"

}