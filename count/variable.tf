variable "myami" {

  type = string
  default = "ami-03265a0778a880afb"
}
variable "instance-names" {
    type = list
    default= ["MongoDB", "Cart", "shipping", "mysql", "rabbitmq", "web", "user", "catalogue", "redis", "payments" ]
  
}

variable "zone_id" {

    default = "Z05740803UNSE6BOTDZEC"
  
}