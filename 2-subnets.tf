resource "aws_subnet" "dorsey-public" {
  vpc_id                  = aws_vpc.dorsey.id
  cidr_block              = "10.230.4.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "dorsey-public"
  }
}

resource "aws_subnet" "dorsey-public2" {
  vpc_id                  = aws_vpc.dorsey.id
  cidr_block              = "10.230.5.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = true
  tags = {
    Name = "dorsey-public2"
  }
}

resource "aws_subnet" "dorsey-public3" {
  vpc_id                  = aws_vpc.dorsey.id
  cidr_block              = "10.230.6.0/24"
  availability_zone       = "us-east-2c"
  map_public_ip_on_launch = true
  tags = {
    Name = "dorsey-public3"
  }
}





resource "aws_subnet" "dorsey-private" {
  vpc_id                  = aws_vpc.dorsey.id
  cidr_block              = "10.230.14.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = false
  tags = {
    Name = "dorsey-private"
  }
}


resource "aws_subnet" "dorsey-private2" {
  vpc_id            = aws_vpc.dorsey.id
  cidr_block        = "10.230.15.0/24"
  availability_zone = "us-east-2b"

  tags = {
    Name = "dorsey-private2"
  }
}

resource "aws_subnet" "dorsey-private3" {
  vpc_id            = aws_vpc.dorsey.id
  cidr_block        = "10.230.16.0/24"
  availability_zone = "us-east-2c"

  tags = {
    Name = "dorsey-private3"
  }
}