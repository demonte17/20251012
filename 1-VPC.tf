resource "aws_vpc" "dorsey" {
  cidr_block           = "10.230.0.0/16"
  enable_dns_hostnames = true # optional, defaults to true
  enable_dns_support   = true # optional, defaults to true

  tags = {
    Name = "dorsey"
  }
}