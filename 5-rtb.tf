resource "aws_route_table" "rtb1" {
  vpc_id = aws_vpc.dorsey.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "terraformpublicrtb"
  }
}

resource "aws_route_table_association" "dorsey-public" {
  subnet_id      = aws_subnet.dorsey-public.id
  route_table_id = aws_route_table.rtb1.id
}

resource "aws_route_table_association" "dorsey-public2" {
  subnet_id      = aws_subnet.dorsey-public2.id
  route_table_id = aws_route_table.rtb1.id
}

resource "aws_route_table_association" "dorsey-public3" {
  subnet_id      = aws_subnet.dorsey-public3.id
  route_table_id = aws_route_table.rtb1.id
}


#####. private rtb ##### 

resource "aws_route_table" "rtb1private" {
  vpc_id = aws_vpc.dorsey.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
    Name = "terraformprivatertb"
  }
}


resource "aws_route_table_association" "dorsey-private" {
  subnet_id      = aws_subnet.dorsey-private.id
  route_table_id = aws_route_table.rtb1private.id
}

resource "aws_route_table_association" "dorsey-private2" {
  subnet_id      = aws_subnet.dorsey-private2.id
  route_table_id = aws_route_table.rtb1private.id
}

resource "aws_route_table_association" "dorsey-private3" {
  subnet_id      = aws_subnet.dorsey-private3.id
  route_table_id = aws_route_table.rtb1private.id
}



