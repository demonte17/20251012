resource "aws_security_group" "dorseysecurity" {
  name        = "dorseysecurity"
  description = "allow inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.dorsey.id

  tags = {
    Name = "dorseysecurity"
  }
}

resource "aws_vpc_security_group_ingress_rule" "dorseysginbound" {
  description       = "ssh"
  security_group_id = aws_security_group.dorseysecurity.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22

  tags = {
    Name = "ssh"

  }
}

resource "aws_vpc_security_group_ingress_rule" "dorseysginbound_tcp" {
  description       = "tcp"
  security_group_id = aws_security_group.dorseysecurity.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80

  tags = {
    Name = "tcp"

  }
}

resource "aws_vpc_security_group_egress_rule" "dorseyoutbound_egress_allow_all_ipv4" {
  security_group_id = aws_security_group.dorseysecurity.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports 
}