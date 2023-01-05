resource "aws_vpc" "AwsB6" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
    Env  = var.env
  }
}
resource "aws_internet_gateway" "AwsB6-IGw" {
  vpc_id = aws_vpc.AwsB6.id
  tags = {
    Name = var.vpc_igw
  }
}
