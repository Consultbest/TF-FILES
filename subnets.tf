# Public subnets
resource "aws_subnet" "test-public-1" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-west-3a"

  tags = {
    Name = "test-public-1"
  }
}

resource "aws_subnet" "test-public-2" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-west-3b"

  tags = {
    Name = "test-public-2"
  }
}


# Private subnets
resource "aws_subnet" "test-private-1" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = "10.0.101.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "eu-west-3a"

  tags = {
    Name = "test-private-1"
  }
}

resource "aws_subnet" "test-private-2" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = "10.0.102.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "eu-west-3b"

  tags = {
    Name = "test-private-2"
  }
}

