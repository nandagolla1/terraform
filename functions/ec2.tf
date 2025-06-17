resource "aws_instance" "roboshop" {
  count = length(var.instances_loop)
  ami           = var.ami_id
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  tags = merge(var.common_tags, {
    Component = var.instances_loop[count.index]
    Name = var.instances_loop[count.index]
  })
  }

resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description

  tags = merge(var.common_tags, {
    Name = var.sg_name
  })

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