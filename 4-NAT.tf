# All NAT configurations are in this file.
# Tokyo NAT
resource "aws_eip" "eip_TYO" {
  vpc = true
  provider = aws.tokyo

  tags = {
    Name = "eip_TYO"
  }
}

resource "aws_nat_gateway" "nat_TYO" {
  allocation_id = aws_eip.eip_TYO.id
  subnet_id     = aws_subnet.public-ap-northeast-1a.id
  provider = aws.tokyo

  tags = {
    Name = "nat_TYO"
  }

  depends_on = [aws_internet_gateway.igw_TYO]
}
#-----------------------------------------------#
# New York NAT

resource "aws_eip" "eip_NY" {
  vpc = true
  provider = aws.newyork

  tags = {
    Name = "eip_NY"
  }
}


resource "aws_nat_gateway" "nat_NY" {
  allocation_id = aws_eip.eip_NY.id
  subnet_id     = aws_subnet.public-us-east-1a.id
  provider = aws.newyork

  tags = {
    Name = "nat_NY"
  }

  depends_on = [aws_internet_gateway.igw_NY]
}

# London