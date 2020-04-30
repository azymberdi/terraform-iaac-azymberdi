resource "aws_eip" "lb" {
  instance = "${aws_instance.instance.id}"
  vpc      = true
tags =  {
           Environment = "Dev"
           Department = "IT"
           Team = "Infrastructure"
           Created_by = "Azymberdi Gutdanov"
  }
}

output "Elastic_IP" {
  value       = "${aws_eip.lb.id}"
}