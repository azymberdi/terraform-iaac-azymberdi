# resource "aws_nat_gateway" "gw" {
#   allocation_id = "${aws_eip.lb.id}"
#   subnet_id     = "${aws_subnet.private1.id}" 
#  tags =  {
#            Environment = "Dev"
#            Department = "IT"
#            Team = "Infrastructure"
#            Created_by = "Azymberdi Gutdanov"
#   }
# }

# output "NAT" {
#   value       = "${aws_nat_gateway.gw.id}"
# }
