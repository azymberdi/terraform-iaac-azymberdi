
resource "aws_subnet" "private1" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.private_cidr1}"
  availability_zone = "${var.region}${var.az1}"

  tags = "${var.tags}"
}

resource "aws_subnet" "private2" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.private_cidr2}"
  availability_zone = "${var.region}${var.az2}"

  tags = "${var.tags}"
}

resource "aws_subnet" "private3" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.private_cidr3}"
  availability_zone = "${var.region}${var.az3}"

  tags = "${var.tags}"
}


















# resource "aws_subnet" "private1" {
#   vpc_id     = "${aws_vpc.main.id}"
#   cidr_block = "10.0.1.0/24"
#     tags =  {
#            Environment = "Dev"
#            Department = "IT"
#            Team = "Infrastructure"
#            Created_by = "Azymberdi Gutdanov"
#     }
#   }

# resource "aws_subnet" "private2" {
#   vpc_id     = "${aws_vpc.main.id}"
#   cidr_block = "10.0.2.0/24"
#     tags =  {
#            Environment = "Dev"
#            Department = "IT"
#            Team = "Infrastructure"
#            Created_by = "Azymberdi Gutdanov"
#     }
#   }

# resource "aws_subnet" "private3" {
#   vpc_id     = "${aws_vpc.main.id}"
#   cidr_block = "10.0.3.0/24"
#     tags =  {
#            Environment = "Dev"
#            Department = "IT"
#            Team = "Infrastructure"
#            Created_by = "Azymberdi Gutdanov"
#     }
#   }

# # resource "aws_subnet" "main" {
# #   count = 3
# #   vpc_id     = "${aws_vpc.main.id}"
# #   cidr_block = "10.0.${count.index +1}.0/24"
# #   }

# # output "NAT" {
# #   value       = "${aws_nat_gateway.gw.id}"
# # }
