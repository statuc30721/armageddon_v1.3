resource "aws_lb_target_group" "ASG01_NY_TG01" {
  name     = "ASG01-NewYork-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.VPC-B-NewYork-Test.id
  target_type = "instance"
  provider = aws.newyork

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "ASG01-NY-TG01"
    Service = "ASG01-NY"
    Owner   = "Frodo"
    Project = "Web Service"
  }
}