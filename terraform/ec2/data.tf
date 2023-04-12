data "aws_subnet" "subnet_target" {
  availability_zone_id = "usw2-az1"
  vpc_id               = var.vpc_id
}

data "aws_caller_identity" "current" {}

data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}
