resource "aws_security_group" "AwsB6-Security" {
  name        = "AwsB6-Security"
  description = "Allow All inbound traffic"
  vpc_id      = aws_vpc.AwsB6.id

  ingress {
    description      = "allow all for VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "AwsB6-Security"
  }
}