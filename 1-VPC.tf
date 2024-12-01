# Setup Deployment environment with a VPC
# for each region.



# New York

resource "aws_vpc" "VPC-B-NewYork-Test" {
    provider = aws.newyork
    cidr_block = "10.21.0.0/16"
  

  tags = {
    Name = "VPC-B-NewYork-Test"
    Service = "application1"
    Owner = "Frodo"
    Planet = "Arda"
  }
}