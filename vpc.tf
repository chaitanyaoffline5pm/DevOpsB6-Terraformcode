resource "aws_vpc" "AwsB6" {
  cidr_block           = "10.100.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "DevOpsB6-vpc"
    Env  = "Dev"
  }
}
resource "aws_internet_gateway" "AwsB6-IGw"{
    vpc_id=aws_vpc.AwsB6.vpc_id
    tags = {
        Name = "DevOpsB6-IGW"
    }
}