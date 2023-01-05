resource "aws_subnet" "Public-Subnet" {
  cidr_block              = var.subnet_cidr
  vpc_id                  = aws_vpc.AwsB6.id
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_name
  }
}
resource "aws_subnet" "Public-Subnet-2" {
  cidr_block              = var.subnet_cidr_2
  vpc_id                  = aws_vpc.AwsB6.id
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_name_2
  }
}
resource "aws_subnet" "Vpc_1_subnet_4" {
  cidr_block              = var.subnet_vpc1_cidr
  vpc_id                  = data.aws_vpc.vpc_1.id
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_vpc1_name
  }
}
