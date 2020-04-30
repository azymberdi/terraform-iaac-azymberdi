provider "aws" {
  region = "us-east-1"
  version = "2.59"
}






output "instance_key_name" {
  value       = "${aws_instance.web-output.key_name}"
}

output "instance_ip" {
  value       = "${aws_instance.web-output.public_ip}"
}

output "instance_arn" {
  value       = "${aws_instance.web-output.arn}"
}

output "instance_dns" {
  value       = "${aws_instance.web-output.public_dns}"
}
output "my_message" {
  value       = "Login to wordpress and reset password"
}