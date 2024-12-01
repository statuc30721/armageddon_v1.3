# Retrieve the latest Amazon Linux AMI.

data "aws_ami" "latest-amazon-linux-image" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }

  filter {
    name = "architecture"
    values = ["x86_64"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]

  }
}

output "aws-ami_id" {
  value = data.aws_ami.latest-amazon-linux-image.id
}

resource "aws_launch_template" "app1_NewYork_LT" {
    name_prefix = "app1_NY_LT"
    image_id = data.aws_ami.latest-amazon-linux-image.id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.ASG01-SG03-NY-servers.id]
    key_name = "linux_appserver_key"

# Install software on the Amazon EC2 Instance.
# This calls a local script which runs on each EC2 VM instance.

user_data = base64encode(file("./entry-script.sh"))
    
    tag_specifications {
        resource_type = "instance"
        tags = {
          Name = "app1_NY_LT"
          Service = "application1"
          Owner = "Frodo"
          Planet = "Arda"     
          }
        }
    
    lifecycle {
        create_before_destroy = true
    }
}