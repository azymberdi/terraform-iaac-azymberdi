resource "aws_instance" "instance" {
  ami           =   "ami-0d6621c01e8c2de2c"
  instance_type =   "t2.micro"
  key_name      =   "${aws_key_pair.us-west-2-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data     =    "${file("httpd.sh")}"
  tags = {
    Name = "TerraformTask"
  }
}

