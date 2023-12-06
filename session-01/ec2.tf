#  resource "aws_instance" "myec2" {

#     ami = var.myami
#     instance_type = var.myinstancetype
#     security_groups = [aws_security_group.allow_all.name]  
# } 