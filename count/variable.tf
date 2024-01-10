variable "myami" {

  type = string
  default = "ami-03265a0778a880afb"
}
variable "instance-name" {
    type = list
    default= ["MongoDB", "Cart", "shipping", "mysql", "rabbitmq", "web", "user", "catalogue", "redis", "payments" ]
  
}