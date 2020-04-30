resource "aws_instance" "instance" {
  ami           =   "ami-0323c3dd2da7fb37d"
  instance_type =   "t2.micro"
  key_name      =   "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_vpc.name}"]
  # public_ip = "${aws_subnet.public1.public_ip}"
  user_data     =    "${file("httpd.sh")}"
  tags = {
    Name = "Task3"
  }
}

output "instance_id" {
  value       = "${aws_instance.instance.id}"
}