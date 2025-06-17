variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "ami id of joindevops RHEL9"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
  description = "define the core and storage of the cpu"
}

variable "instance_name" {
  type = map(string)
  default = {
    Name = "HelloWorld"
    Purpose = "variables-demo"
  }
}

variable "sg_name" {
  type = string
  default = "allow_all"
  description = "security name"
}

variable "sg_description" {
  type = string
  default = "Allow all traffic"
  description = "allow all port inbound and outbounf traffic"
}

variable "sg_tag" {
  type = map(string)
  default = {
    "name" = "allow_all"
  }
  description = "name of the security group"
}

variable "ingress_from_port" {
  type = number
  default = 0
  description = "from port number"
}

variable "ingress_to_port" {
  type = number
  default = 0
  description = "to port number"
}

variable "egress_from_port" {
  type = number
  default = 0
  description = "from port number"
}

variable "egress_to_port" {
  type = number
  default = 0
  description = "to port number"
}

variable "sg_protocol" {
  type = string
  default = "-1"
  description = "which allows all types of protocals like ssh, tcp ,ucp etc...."
}

variable "cidr_blocks" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
  description = "allow all ipv4 traffic"
}

variable "ipv6_cidr_blocks" {
  type = list(string)
  default = [ "::/0" ]
  description = "allows all ipv6 traffic"
}

variable "environment" {
  default = "dev"
}

variable "instances_loop" {
  type = list(string)
  default = [ "mongodb", "redis", "catalogue", "user", "cart", "frontend" ]
  /*default = {
    mongodb = "t3.micro"
    redis = "t3.micro"
    catalogue = "t3.micro"
    user = "t3.micro"
    cart = "t3.micro"
    frontend = "t3.micro"
  }*/
}

variable "zone_id" {
  default = "Z0241085GWXCWOXHL9YW"
}

variable "domain" {
  default = "nanda.cyou"
}