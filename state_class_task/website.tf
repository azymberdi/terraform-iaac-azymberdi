# provider "aws" {
#   region = "us-west-2"
# }

# resource "aws_key_pair" "us-west-2-key" {
#   key_name   = "Bastion2"
#   public_key = "${file("~/.ssh/id_rsa.pub")}"
# }

# resource "aws_instance" "instance" {
#   ami           =   "ami-0d6621c01e8c2de2c"
#   instance_type =   "t2.micro"
#   key_name      =   "${aws_key_pair.us-west-2-key.key_name}"
#   security_groups = ["${aws_security_group.allow.name}"]
#   user_data     =    "${file("httpd.sh")}"
#   tags = {
#     Name = "Website"
#   }
# }

# resource "aws_route53_record" "www" {
#    zone_id = "Z02097382TQD9L135RBW5"
#     name    = "www.turkmendevops.com"
#    type    = "A"
#   ttl     = "5"
#   records = ["${aws_instance.instance.public_ip}"]
# }


# resource "aws_security_group" "allow" {
#   name        = "allow_tls_azymberdi"
#   description = "Allow TLS inbound traffic"

#   ingress {
#     description = "TLS from VPC"
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     description = "TLS from VPC"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     description = "TLS from VPC"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }



#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "allow_tls"
#   }
# }

# #This worked 