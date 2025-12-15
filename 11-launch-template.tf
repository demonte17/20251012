resource "aws_launch_template" "web_tier" {
  name          = "web-app-template"
  description   = "launch template for the web tier's apps"
  image_id      = "ami-025ca978d4c1d9825"
  instance_type = "t3.micro"
  # key_name = 
  vpc_security_group_ids = [aws_security_group.dorseysecurity.id]

  #   network_interfaces {
  #     security_groups = [ aws_security_group.web_tier.id ]
  #   }

  user_data = base64encode(file("web_startup_script.sh"))

  tag_specifications {
    resource_type = "instance"
    tags = {
      ManagedBy = "terraform"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}



# name
# description
# ami
# instance type
# key
# SG
# user data