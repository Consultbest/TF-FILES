#! /bin/bash
# create hello world
sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
sudo echo "<h1>Hello World<h1>" | sudo tee /var/www/html/index.html

