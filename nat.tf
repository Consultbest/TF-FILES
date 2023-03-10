# nat gw
resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "test-nat-gw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.test-public-1.id
  depends_on    = [aws_internet_gateway.test-gw]
}

# VPC setup for NAT
resource "aws_route_table" "main-private" {
  vpc_id = aws_vpc.test.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.test-nat-gw.id
  }

  tags = {
    Name = "test-private-1"
  }
}

# route associations private
resource "aws_route_table_association" "main-private-1-a" {
  subnet_id      = aws_subnet.test-private-1.id
  route_table_id = aws_route_table.main-private.id
}

resource "aws_route_table_association" "main-private-2-a" {
  subnet_id      = aws_subnet.test-private-2.id
  route_table_id = aws_route_table.main-private.id
}

