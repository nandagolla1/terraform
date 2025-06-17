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

variable "ingress_ports" {
  default = [{
    from_port = 22
    to_port = 22
  },
  {
    from_port = 80
    to_port = 80
  },
  {
    from_port = 8080
    to_port = 8080
  }]
}


variable "egress_ports" {
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
