resource "aws_route_table" "AwsB6-Route" {
  vpc_id = aws_vpc.AwsB6.id
  tags = {
    Name = "DevOpsB6-Public-Route"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.AwsB6-IGw.id
  }
}
resource "aws_route_table_association" "Subnet_1" {
  subnet_id      = aws_subnet.Public-Subnet.id
  route_table_id = aws_route_table.AwsB6-Route.id
}
resource "aws_route_table_association" "Subnet_2" {
  subnet_id      = aws_subnet.Public-Subnet-2.id
  route_table_id = aws_route_table.AwsB6-Route.id
}