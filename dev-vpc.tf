resource "aws_vpc" "dev_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "dev_vpc"
  }
}

resource "aws_subnet" "dev_subnet" {
  vpc_id     = aws_vpc.dev_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "dev_subnet"
  }
}
