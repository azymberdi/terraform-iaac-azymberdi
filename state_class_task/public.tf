resource "aws_subnet" "public1" {

  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.101.0/24"
    tags =  {
           Environment = "Dev"
           Department = "IT"
           Team = "Infrastructure"
           Created_by = "Azymberdi Gutdanov"
    }
  }

resource "aws_subnet" "public2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.102.0/24"
    tags =  {
           Environment = "Dev"
           Department = "IT"
           Team = "Infrastructure"
           Created_by = "Azymberdi Gutdanov"
    }
  }

resource "aws_subnet" "public3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.103.0/24"
    tags =  {
           Environment = "Dev"
           Department = "IT"
           Team = "Infrastructure"
           Created_by = "Azymberdi Gutdanov"
    }
  }



# resource "aws_subnet" "main" {
#   count = 3
#   vpc_id     = "${aws_vpc.main.id}"
#   cidr_block = "10.0.${count.index +1}.0/24"
#   }

output "Public_Subnet_1" {
  value       = "${aws_subnet.public1.id}"
}

output "Public_Subnet_2" {
  value       = "${aws_subnet.public2.id}"
}

output "Public_Subnet_3" {
  value       = "${aws_subnet.public3.id}"
}