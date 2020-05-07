# output "name" {
#   value       = "azymberdi"
# }

# output "lastname" {
#   value       = "gutdanov"
# }

# resource "aws_key_pair" "us-west-2-key2" {
#   key_name   = "Bastion2"
#   public_key = "${file("~/.ssh/id_rsa.pub")}"
# }

# output "Key_name" {
#   value       = "${aws_key_pair.us-west-2-key2.key_name}"
#   description = "Use this keypair if it is a new one"
# }

# output "actual_key" {
#   value       = "${aws_key_pair.us-west-2-key2.public_key}"
# }

# output "actual_key_id" {
#   value       = "${aws_key_pair.us-west-2-key2.id}"
# }

