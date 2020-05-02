provider "aws" {
  region = "us-east-1"
  version = "2.59"
}

#####Ubuntu AMI
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

### Output Ubuntu AMI 
output "ubuntu_ami" { 
value = "${data.aws_ami.ubuntu.id}"
} 

### Instance Ubuntu
resource "aws_instance" "ubuntu" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "UbuntuWorld"
  }
}

### CentOs AMI
data "aws_ami" "centos" { 
    most_recent = true 
    owners = ["679593333241"] 
    filter { 
    name = "state" 
    values = ["available"] 
} 

filter { 
     name = "name" 
     values = ["CentOS Linux 7 x86_64 HVM EBS *"] 
    } 
} 

### Key Pair
resource "aws_key_pair" "us-east-1-key" {
  key_name   = "far_bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
### Instance Centos
resource "aws_instance" "centos" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
  key_name ="${aws_key_pair.us-east-1-key.key_name}"
  tags = {
    Name = "CentOSWorld"
  }
  provisioner "remote-exec" {
    connection {
    type     = "ssh"
    user     = "centos"
    private_key = "${file ("~/.ssh/id_rsa")}"
    host     = "${self.public_ip}"

  }
    inline = [
      "sudo yum install httpd",
      "sudo systemctl start httpd"
    ]
  }
}

### Outpus CentOS AMI
output "centos_ami" { 
value = "${data.aws_ami.centos.id}" 
} 