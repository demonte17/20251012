resource "aws_lb_target_group" "dorsey_asg" {
  name        = "web-app-lb-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.dorsey.id
  target_type = "instance"

  # default value but nice to actually see it explictly 
  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    matcher             = "200"
  }
}