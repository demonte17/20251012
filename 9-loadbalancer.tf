resource "aws_lb" "dorsey_asg" {
  name               = "web-tier-app-lb"
  internal           = false
  load_balancer_type = "application"
  # using HTTP/S = application LB
  security_groups = [aws_security_group.web_load_balancer.id]
  subnets = [
    aws_subnet.dorsey-public.id,
    aws_subnet.dorsey-public2.id,
  aws_subnet.dorsey-public3.id]

  # IMPORTANT
  enable_deletion_protection = false

  tags = {
    Name = "web-tier-app-lb"
  }
}