# output "ip_address" {
#   value = aws_instance.web_tier.public_ip
# }

# output "website_url" {
#   value = "http://${aws_instance.web_tier.public_dns}"
# }
output "lb_dns_name" {
  value       = "http://${aws_lb.dorsey_asg.dns_name}"
  description = "The DNS name of the Auto Scale Group 01 - Load Balancer."
}