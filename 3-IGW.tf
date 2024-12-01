resource "aws_internet_gateway" "igw_NY" {
  vpc_id = aws_vpc.VPC-B-NewYork-Test.id

  tags = {
    Name    = "application_NY_IGW"
    Service = "application1"
    Owner   = "Frodo"
    Planet  = "Arda"
  }
}
