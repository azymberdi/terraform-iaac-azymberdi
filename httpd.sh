#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mariadb-server
systemctl start httpd
systemctl enable httpd
chown -R apache:apache /var/www/html
echo "Terraform Task" > /var/www/html/index.html