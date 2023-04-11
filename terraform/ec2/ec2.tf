module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "meta-onboarding-${data.aws_caller_identity.current.user_id}"

  ami           = "ami-0f28f24910375a30a"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.generated_key.key_name
  monitoring    = true
  subnet_id     = data.aws_subnet.subnet_target.id
  metadata_options = {
    http_tokens = "required"
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
