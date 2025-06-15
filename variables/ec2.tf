resource "aws_instance" "roboshop" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  tags = var.instance_name
}

resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description

  tags = var.sg_tag

  ingress {
    from_port       = var.ingress_from_port
    to_port         = var.ingress_to_port
    protocol        = var.sg_protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }

  egress {
    from_port       = var.egress_from_port
    to_port         = var.egress_to_port
    protocol        = var.sg_protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }
}