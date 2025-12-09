# Create a new ALB Target Group attachment
resource "aws_autoscaling_attachment" "dorsey_asg" {
  autoscaling_group_name = aws_autoscaling_group.dorsey_asg.id
  lb_target_group_arn    = aws_lb_target_group.dorsey_asg.arn
}