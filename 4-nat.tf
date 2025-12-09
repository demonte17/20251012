resource "aws_eip" "dorsey1" {
  domain = "vpc"

  tags = {
    Name = "terraform_eip"
  }

  depends_on = [aws_internet_gateway.gw] #explicit dependency

}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.dorsey1.id
  subnet_id     = aws_subnet.dorsey-public.id

  tags = {
    Name = "nat_gw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}