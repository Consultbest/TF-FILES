# Internet GW
resource "aws_internet_gateway" "test-gw" {
  vpc_id = aws_vpc.test.id

  tags = {
    Name = "test"
  }
}

# route tables
resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.test.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test-gw.id
  }

  tags = {
    Name = "test-public-1"
  }
}

# route associations public
resource "aws_route_table_association" "main-public-1-a" {
  subnet_id      = aws_subnet.test-public-1.id
  route_table_id = aws_route_table.main-public.id
}

resource "aws_route_table_association" "main-public-2-a" {
  subnet_id      = aws_subnet.test-public-2.id
  route_table_id = aws_route_table.main-public.id
}
