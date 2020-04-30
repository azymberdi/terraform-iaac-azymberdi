resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
  tags =  {
           Environment = "Dev"
           Department = "IT"
           Team = "Infrastructure"
           Created_by = "Azymberdi Gutdanov"
  }
}

output "IGW" {
  value       = "${aws_internet_gateway.gw.id}"
}