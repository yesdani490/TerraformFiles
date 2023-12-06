variable "myami" {
    type = string
    default = "ami-03265a0778a880afb"
  
}

variable "myinstancetype" {
    
    default = "t2.micro"
  
}

variable "sg_cidr" {
    type = list
    default = ["0.0.0.0/0"]
  
}