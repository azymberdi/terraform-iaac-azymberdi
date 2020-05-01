resource "aws_route53_record" "www" {
   zone_id = "Z02097382TQD9L135RBW5"
    name    = "www.turkmendevops.com"
   type    = "A"
  ttl     = "5"
  records = ["${aws_instance.instance.public_ip}"]
}