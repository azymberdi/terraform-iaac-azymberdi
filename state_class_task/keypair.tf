resource "aws_key_pair" "us-east-1-key" {
  key_name   = "Task3_keypair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

output "key_pair" {
  value       = "${aws_key_pair.us-east-1-key.key_name}"
}