resource "aws_vpc" "main" {
  # cidr_block = "${var.vpc_cidr}"
  cidr_block = "10.0.0.0/16"
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

# ################ Private
resource "aws_subnet" "private1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"
  }

resource "aws_subnet" "private2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.2.0/24"
  }

resource "aws_subnet" "private3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.3.0/24"
  }

# ################ Public
resource "aws_subnet" "public1" {

  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.101.0/24"
  }

resource "aws_subnet" "public2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.102.0/24"
  }

resource "aws_subnet" "public3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.103.0/24"
  }

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
}

# resource "aws_nat_gateway" "gw" {
#   allocation_id = "${aws_eip.lb.id}"
#   subnet_id     = "${aws_subnet.main.id}"
# }

resource "aws_eip" "lb" {
  instance = "${aws_instance.instance.id}"
  vpc      = true
}

resource "aws_route_table" "r" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

#########Route Table Association
resource "aws_route_table_association" "b1" {
  subnet_id      = "${aws_subnet.public1.id}"
  route_table_id = "${aws_route_table.r.id}"
}
resource "aws_route_table_association" "b2" {
  subnet_id      = "${aws_subnet.public2.id}"
  route_table_id = "${aws_route_table.r.id}"
}
resource "aws_route_table_association" "b3" {
  subnet_id      = "${aws_subnet.public3.id}"
  route_table_id = "${aws_route_table.r.id}"
}

resource "aws_key_pair" "us-east-1-key" {
  key_name   = "Task3_keypair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_instance" "instance" {
  ami           =   "ami-0323c3dd2da7fb37d"
  instance_type =   "t2.micro"
  key_name      =   "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_vpc.name}"]
  user_data     =    "${file("httpd.sh")}"
  tags = {
    Name = "Website"
  }
}

resource "aws_security_group" "allow_vpc" {
  name        = "allow_tls_azymberdi"
  description = "Allow TLS inbound traffic"


  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

