#
#
data "aws_route53_zone" "main" {
    name    = "devlab405.click" # Domain name 
    private_zone = false
}

# Asia 
resource "aws_route53_record" "default" {
  zone_id = data.aws_route53_zone.main.zone_id
  name = "app1.devlab405.click"
  type = "A"

  set_identifier = "ap-northeast-1"


# Sets geographical area to "default" for any query not 
# identified in any other region.

  geolocation_routing_policy {
    country = "*"
  }
 
 alias {
  name = aws_lb.ASG01-TYO-LB01.dns_name
  zone_id = aws_lb.ASG01-TYO-LB01.zone_id
  evaluate_target_health = true
   
 }
}

/*
# East Coast USA Region


resource "aws_route53_record" "app1_NY" {
  zone_id = aws_route53_record.app1.zone_id
  name = "app1.devlab405.click"
  type = "A"

  set_identifier = "app1_NY"

# Sets gwographical area to North America.
  geolocation_routing_policy {
    continent = "NA"
  }

alias {
  name = aws_lb.ASG01-NY-LB01.dns_name
  zone_id = aws_lb.ASG01-NY-LB01.zone_id
  evaluate_target_health = true
   
 }
  
}

*/

/*
# Europe Region
resource "aws_route53_record" "app1_LON" {
  zone_id = aws_route53_record.app1.zone_id
  name = "app1.devlab405.click"
  type = "A"

  set_identifier = "app1_LON"

# Sets geolocation to Europe.
  geolocation_routing_policy {
    continent = "EU"
  }

alias {
  name = aws_lb.ASG01-LON-LB01.name
  zone_id = aws_lb.ASG01-LON-LB01.zone_id
  evaluate_target_health = true
   
 }
  
}
/*
# South America Region
resource "aws_route53_record" "app1_SAO" {
  zone_id = aws_route53_record.app1.zone_id
  name = "app1.devlab405.click"
  type = "A"

  set_identifier = "app1_SAO"

# Sets geolocation to South America.
  geolocation_routing_policy {
    continent = "SA"
  }

alias {
  name = aws_lb.ASG01-SAO-LB01.name
  zone_id = aws_lb.ASG01-SAO-LB01.zone_id
  evaluate_target_health = true
   
 }
  
}
*/