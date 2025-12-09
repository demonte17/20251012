resource "aws_autoscaling_policy" "dorsey_asg_cpu" {
  name                      = "web-app-cpu-scaler"
  autoscaling_group_name    = aws_autoscaling_group.dorsey_asg.name
  policy_type               = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 60.0
  }
}


# API docs on this: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredefinedMetricSpecification.html

resource "aws_autoscaling_policy" "dorsey_asg_requests" {
  name                   = "web-app-cpu-scaler"
  autoscaling_group_name = aws_autoscaling_group.dorsey_asg.name
  policy_type            = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ALBRequestCountPerTarget"
      resource_label         = "${aws_lb.dorsey_asg.arn_suffix}/${aws_lb_target_group.dorsey_asg.arn_suffix}"
    }
    target_value = 20
  }
}