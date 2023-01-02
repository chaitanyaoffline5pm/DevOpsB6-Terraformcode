resource "aws_vpc" "AwsB6"{
    cidr_block = "10.100.0.0/16"
    enable_dns_hostnames=true
    tags = {
        Name = "AwsB6-vpc"
        Env ="Dev"
    }
}