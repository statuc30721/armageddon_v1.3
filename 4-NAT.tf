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

#--------------------------------------------#
# London
resource "aws_eip" "eip_LONDON" {
  vpc = true
  provider = aws.london

  tags = {
    Name = "eip_LONDON"
  }
}


resource "aws_nat_gateway" "nat_LONDON" {
  allocation_id = aws_eip.eip_LONDON.id
  subnet_id     = aws_subnet.public-eu-west-2a.id
  provider = aws.london

  tags = {
    Name = "nat_LONDON"
  }

  depends_on = [aws_internet_gateway.igw_LON]
}

#---------------------------------------------------#
# Sao Paulo Region
resource "aws_eip" "eip_SaoPaulo" {
  vpc = true
  provider = aws.saopaulo

  tags = {
    Name = "eip_SaoPaulo"
  }
}


resource "aws_nat_gateway" "nat_SaoPaulo" {
  allocation_id = aws_eip.eip_SaoPaulo.id
  subnet_id     = aws_subnet.public-sa-east-1a.id
  provider = aws.saopaulo

  tags = {
    Name = "nat_SaoPaulo"
  }

  depends_on = [aws_internet_gateway.igw_SAO]
}

#---------------------------------------------------#
# Australia
resource "aws_eip" "eip_Australia" {
  vpc = true
  provider = aws.australia

  tags = {
    Name = "eip_Australia"
  }
}


resource "aws_nat_gateway" "nat_Australia" {
  allocation_id = aws_eip.eip_Australia.id
  subnet_id     = aws_subnet.public-ap-southeast-2a.id
  provider = aws.australia

  tags = {
    Name = "nat_Australia"
  }

  depends_on = [aws_internet_gateway.igw_AUS]
}
#---------------------------------------------------#
# Hong Kong
resource "aws_eip" "eip_HongKong" {
  vpc = true
  provider = aws.hongkong

  tags = {
    Name = "eip_HongKong"
  }
}


resource "aws_nat_gateway" "nat_HongKong" {
  allocation_id = aws_eip.eip_HongKong.id
  subnet_id     = aws_subnet.public-ap-east-1a.id

  provider = aws.hongkong
  tags = {
    Name = "nat_HongKong"
  }

  depends_on = [aws_internet_gateway.igw_HK]
}
#---------------------------------------------------#
# California
resource "aws_eip" "eip_California" {
  vpc = true
  provider = aws.california

  tags = {
    Name = "eip_California"
  }
}


resource "aws_nat_gateway" "nat_California" {
  allocation_id = aws_eip.eip_California.id
  subnet_id     = aws_subnet.public-us-west-1a.id
  provider = aws.california

  tags = {
    Name = "nat_California"
  }

  depends_on = [aws_internet_gateway.igw_CALI]
}