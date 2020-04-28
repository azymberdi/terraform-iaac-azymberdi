
# resource "aws_route53_zone" "www" {
#   name = "azymberdi.com"
# }


resource "aws_route53_record" "www" {
   zone_id = "Z0087054W7TKM54TM8MW"
    name    = "www.azymberdi.com"
   type    = "A"
  ttl     = "300"
  records = ["${aws_instance.instance.public_ip}"]
}

