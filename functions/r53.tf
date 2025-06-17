resource "aws_route53_record" "www" {
  count = length(var.instances_loop)
  zone_id = var.zone_id
  name    = "${var.instances_loop[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.roboshop[count.index].private_ip]
}