output "Vpc_ID" {
  value       = "${aws_vpc.main.id}"
}

# output "public_subnets" {
#   value = [
#     "${aws_subnet.public1.id}        ${aws_subnet.public1.cidr_block}        ${aws_subnet.public1.availability_zone}" ,
#     "${aws_subnet.public2.id}         ${aws_subnet.public2.cidr_block}       ${aws_subnet.public2.availability_zone}" ,
#     "${aws_subnet.public3.id}         ${aws_subnet.public3.cidr_block}       ${aws_subnet.public3.availability_zone}"
#   ]
# }

output "Public_subnets" {
  value = [
    "${aws_subnet.public1.id}",
    "${aws_subnet.public2.id}",
    "${aws_subnet.public3.id}",
  ]

}

# output "private_subnets" {
#   value = [
#     "${aws_subnet.private1.id}         ${aws_subnet.private1.cidr_block}        ${aws_subnet.private1.availability_zone}" ,
#     "${aws_subnet.private2.id}         ${aws_subnet.private2.cidr_block}        ${aws_subnet.private2.availability_zone}" ,
#     "${aws_subnet.private3.id}         ${aws_subnet.private3.cidr_block}        ${aws_subnet.private3.availability_zone}"
#   ]
# }

output "Private_subnets" {
  value = [
    "${aws_subnet.private1.id} ",  
    "${aws_subnet.private2.id}",
    "${aws_subnet.private3.id}",    
  ]
}

# output "region" {
#   value = "${var.region}         ${var.region_name}"
# }

# output "Tags" {
#   value = "${var.tags}"
# }

output "Instance_key_name" {
  value       = "${aws_instance.instance.key_name}"
}

output "Instance_ip" {
  value       = "${aws_instance.instance.public_ip}"
}

output "Instance_arn" {
  value       = "${aws_instance.instance.arn}"
}

output "Instance_dns" {
  value       = "${aws_instance.instance.public_dns}"
}

output "Internet_Gateway" {
  value       = "${aws_internet_gateway.gw.id}"
}

output "Instance_id" {
  value       = "${aws_instance.instance.id}"
}

output "Key_pair" {
  value       = "${aws_key_pair.us-east-1-key.key_name}"
}

output "Security_Group" {
  value       = "${aws_security_group.allow_vpc.id}"
}

output "Worldly_message" {
  value       = "Task 3 completed"
}

