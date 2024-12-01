# Note: There is one VPC in each region with 2 Availability Zones.
# New York VPC Public IP space.
resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.VPC-B-NewYork-Test.id
  cidr_block              = "10.21.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  provider = aws.newyork

  tags = {
    Name    = "public-us-east-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.VPC-B-NewYork-Test.id
  cidr_block              = "10.21.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  provider = aws.newyork

  tags = {
    Name    = "public-us-east-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

# New York Private IP space.

resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.ASG01-VPC.id
  cidr_block        = "10.22.11.0/24"
  availability_zone = "us-east-1a"
  provider = aws.newyork

  tags = {
    Name    = "private-us-east-1a"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.ASG01-VPC.id
  cidr_block        = "10.22.12.0/24"
  availability_zone = "us-east-1b"
  provider = aws.newyork

  tags = {
    Name    = "private-us-east-1b"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}