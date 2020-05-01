resource "aws_instance" "instance" {
  ami           =   "ami-0323c3dd2da7fb37d"
  instance_type =   "t2.micro"
  key_name      =   "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_vpc.name}"]
  user_data     =    "${file("httpd.sh")}"
  tags = {
    Name = "Task3"
  }
}

