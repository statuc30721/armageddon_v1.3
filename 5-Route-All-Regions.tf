
# Tokyo Region
#
# Public Network

resource "aws_route_table" "public_Tokyo" {
  vpc_id = aws_vpc.VPC-A-Tokyo-Test.id
  provider = aws.tokyo

  route   {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw_TYO.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  
    tags = {
    Name = "public_tokyo"
  }
}

#-----------------------------------------------#
#
# These are for the public subnets.

resource "aws_route_table_association" "public-ap-northeast-1a" {
  subnet_id      = aws_subnet.public-ap-northeast-1a.id
  route_table_id = aws_route_table.public_Tokyo.id
  provider = aws.tokyo
}

resource "aws_route_table_association" "public-ap-northeast-1c" {
  subnet_id      = aws_subnet.public-ap-northeast-1c.id
  route_table_id = aws_route_table.public_Tokyo.id
  provider = aws.tokyo
}

#-----------------------------------------------#
# Private Network


resource "aws_route_table" "private_Tokyo" {
  vpc_id = aws_vpc.VPC-A-Tokyo-Test.id
  provider = aws.tokyo
  
  
  route  {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat_TYO.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }

  tags = {
    Name = "private_Tokyo"
  }
}


# These are for the private subnets.

resource "aws_route_table_association" "private-ap-northeast-1a" {
  subnet_id      = aws_subnet.private-ap-northeast-1a.id
  route_table_id = aws_route_table.private_Tokyo.id
  provider = aws.tokyo
}

resource "aws_route_table_association" "private-ap-northeast-1c" {
  subnet_id      = aws_subnet.private-ap-northeast-1c.id
  route_table_id = aws_route_table.private_Tokyo.id
  provider = aws.tokyo
}

#---------------------------------------------------------------#
# New York Region
resource "aws_route_table" "private_NY" {
  vpc_id = aws_vpc.VPC-B-NewYork-Test.id
  
  route  {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat_NY.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }

  tags = {
    Name = "private_NY"
  }
}

resource "aws_route_table" "public_NY" {
  vpc_id = aws_vpc.VPC-B-NewYork-Test.id

  route   {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw_NY.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  
    tags = {
    Name = "public_NY"
  }
}

#-----------------------------------------------#
#
# These are for the private subnets.

resource "aws_route_table_association" "private-us-east-1a" {
  subnet_id      = aws_subnet.private-us-east-1a.id
  route_table_id = aws_route_table.private_NY.id
}

resource "aws_route_table_association" "private-us-east-1b" {
  subnet_id      = aws_subnet.private-us-east-1b.id
  route_table_id = aws_route_table.private_NY.id
}

#-----------------------------------------------#
#
# These are for the public subnets.

resource "aws_route_table_association" "public-us-east-1a" {
  subnet_id      = aws_subnet.public-us-east-1a.id
  route_table_id = aws_route_table.public_NY.id
}

resource "aws_route_table_association" "public-us-east-1b" {
  subnet_id      = aws_subnet.public-us-east-1b.id
  route_table_id = aws_route_table.public_NY.id
}

#------------------------------------------------------------#
# London Region
#
# Public Network

resource "aws_route_table" "public_London" {
  vpc_id = aws_vpc.VPC-C-London-Test.id
  provider = aws.london

  route   {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw_LON.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  
    tags = {
    Name = "public_london"
  }
}

#-----------------------------------------------#
#
# These are for the public subnets.

resource "aws_route_table_association" "public-eu-west-2a" {
  subnet_id      = aws_subnet.public-eu-west-2a.id
  route_table_id = aws_route_table.public_London.id
  provider = aws.london
}

resource "aws_route_table_association" "public-eu-west-2b" {
  subnet_id      = aws_subnet.public-eu-west-2b.id
  route_table_id = aws_route_table.public_London.id
  provider = aws.london
}

#-----------------------------------------------#
# Private Network


resource "aws_route_table" "private_London" {
  vpc_id = aws_vpc.VPC-C-London-Test.id
  provider = aws.london
  
  
  route  {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat_LONDON.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }

  tags = {
    Name = "private_london"
  }
}


# These are for the private subnets.

resource "aws_route_table_association" "private-eu-west-2a" {
  subnet_id      = aws_subnet.private-eu-west-2a.id
  route_table_id = aws_route_table.private_London.id
  provider = aws.london
}

resource "aws_route_table_association" "private-eu-west-2b" {
  subnet_id      = aws_subnet.private-eu-west-2b.id
  route_table_id = aws_route_table.private_London.id
  provider = aws.london
}


#-----------------------------------------------#
# Sao Paolo Region
#
# Public Network

resource "aws_route_table" "public_SaoPaolo" {
  vpc_id = aws_vpc.VPC-D-SaoPaolo-Test.id
  provider = aws.saopaulo

  route   {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw_SAO.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  
    tags = {
    Name = "public_SaoPaulo"
  }
}

#-----------------------------------------------#
#
# These are for the public subnets.

resource "aws_route_table_association" "public-sa-east-1a" {
  subnet_id      = aws_subnet.public-sa-east-1a.id
  route_table_id = aws_route_table.public_SaoPaolo.id
  provider = aws.saopaulo
}

resource "aws_route_table_association" "public-sa-east-1b" {
  subnet_id      = aws_subnet.public-sa-east-1b.id
  route_table_id = aws_route_table.public_SaoPaolo.id
  provider = aws.saopaulo
}

#-----------------------------------------------#
# Private Network


resource "aws_route_table" "private_SaoPaulo" {
  vpc_id = aws_vpc.VPC-D-SaoPaolo-Test.id
  provider = aws.saopaulo
  
  
  route  {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat_SaoPaulo.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }

  tags = {
    Name = "private_SaoPaulo"
  }
}


# These are for the private subnets.

resource "aws_route_table_association" "private-sa-east-1a" {
  subnet_id      = aws_subnet.private-sa-east-1a.id
  route_table_id = aws_route_table.private_SaoPaulo.id
  provider = aws.saopaulo
}

resource "aws_route_table_association" "private-sa-east-1b" {
  subnet_id      = aws_subnet.private-sa-east-1b.id
  route_table_id = aws_route_table.private_SaoPaulo.id
  provider = aws.saopaulo
}




#-----------------------------------------------#
# Australia Region
#
# Public Network

resource "aws_route_table" "public_Australia" {
  vpc_id = aws_vpc.VPC-E-Australia-Test.id
  provider = aws.australia

  route   {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw_AUS.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  
    tags = {
    Name = "public_Australia"
  }
}

#-----------------------------------------------#
#
# These are for the public subnets.

resource "aws_route_table_association" "public-ap-southeast-2a" {
  subnet_id      = aws_subnet.public-ap-southeast-2a.id
  route_table_id = aws_route_table.public_Australia.id
  provider = aws.australia
}

resource "aws_route_table_association" "public-ap-southeast-2b" {
  subnet_id      = aws_subnet.public-ap-southeast-2b.id
  route_table_id = aws_route_table.public_Australia.id
  provider = aws.australia
}

#-----------------------------------------------#
# Private Network



resource "aws_route_table" "private_Australia" {
  vpc_id = aws_vpc.VPC-E-Australia-Test.id
  provider = aws.australia
  
  route  {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat_Australia.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }

  tags = {
    Name = "private_Australia"
  }
}


# These are for the private subnets.

resource "aws_route_table_association" "private-ap-southeast-2a" {
  subnet_id      = aws_subnet.private-ap-southeast-2a.id
  route_table_id = aws_route_table.private_Australia.id
  provider = aws.australia
}

resource "aws_route_table_association" "private-ap-southeast-2b" {
  subnet_id      = aws_subnet.private-ap-southeast-2b.id
  route_table_id = aws_route_table.private_Australia.id
  provider = aws.australia
}

#-----------------------------------------------------------------#
# Hong Kong Region
#
# Public Network

resource "aws_route_table" "public_HongKong" {
  vpc_id = aws_vpc.VPC-F-HongKong-Test.id
  provider = aws.hongkong

  route   {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw_HK.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  
    tags = {
    Name = "public_HongKong"
  }
}

#-----------------------------------------------#
#
# These are for the public subnets.

resource "aws_route_table_association" "public-ap-east-1a" {
  subnet_id      = aws_subnet.public-ap-east-1a.id
  route_table_id = aws_route_table.public_HongKong.id
  provider = aws.hongkong
}

resource "aws_route_table_association" "public-ap-east-1b" {
  subnet_id      = aws_subnet.public-ap-east-1b.id
  route_table_id = aws_route_table.public_HongKong.id
  provider = aws.hongkong
}
#-----------------------------------------------#
# Private Network



resource "aws_route_table" "private_HongKong" {
  vpc_id = aws_vpc.VPC-F-HongKong-Test.id
  provider = aws.hongkong
  
  
  route  {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat_HongKong.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }

  tags = {
    Name = "private_HongKong"
  }
}


# These are for the private subnets.

resource "aws_route_table_association" "private-ap-east-1a" {
  subnet_id      = aws_subnet.private-ap-east-1a.id
  route_table_id = aws_route_table.private_HongKong.id
  provider = aws.hongkong
}

resource "aws_route_table_association" "private-ap-east-1b" {
  subnet_id      = aws_subnet.private-ap-east-1b.id
  route_table_id = aws_route_table.private_HongKong.id
  provider = aws.hongkong
}


# California Region
#
# Public Network

resource "aws_route_table" "public_California" {
  vpc_id = aws_vpc.VPC-G-California-Test.id
  provider = aws.california

  route   {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw_CALI.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  
    tags = {
    Name = "public_California"
  }
}

#-----------------------------------------------#
#
# These are for the public subnets.

resource "aws_route_table_association" "public-us-west-1a" {
  subnet_id      = aws_subnet.public-us-west-1a.id
  route_table_id = aws_route_table.public_California.id
  provider = aws.california
}

resource "aws_route_table_association" "public-us-west-1b" {
  subnet_id      = aws_subnet.public-us-west-1b.id
  route_table_id = aws_route_table.public_California.id
  provider = aws.california
}

#-----------------------------------------------#
# Private Network



resource "aws_route_table" "private_California" {
  vpc_id = aws_vpc.VPC-G-California-Test.id
  provider = aws.california
  
  
  route  {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat_California.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }

  tags = {
    Name = "private_California"
  }
}


# These are for the private subnets.

resource "aws_route_table_association" "private-us-west-1a" {
  subnet_id      = aws_subnet.private-us-west-1a.id
  route_table_id = aws_route_table.private_California.id
  provider = aws.california
}

resource "aws_route_table_association" "private-us-west-1b" {
  subnet_id      = aws_subnet.private-us-west-1b.id
  route_table_id = aws_route_table.private_California.id
  provider = aws.california
}


