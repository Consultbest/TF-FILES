resource "aws_instance" "ec2_demo" {
    ami = "ami-0f15e0a4c8d3ee5fe"
    instance_type = "t2.micro"
    user_data = file("${path.module}/hello.sh")
    subnet_id = aws_subnet.test-private-1.id
    associate_public_ip_address = false

    tags = {
        "Name" = "testing"
    }
}
