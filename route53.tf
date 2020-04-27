
resource "aws_route53_zone" "www" {
  name = "azymberdi.com"
}


resource "aws_route53_record" "www" {
   zone_id = "${aws_route53_zone.www.zone_id}"
    name    = "task1.azymberdi.com"
   type    = "A"
  ttl     = "300"
  records = ["${aws_instance.instance.public_ip}"]
}

