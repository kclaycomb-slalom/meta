module "ec2_instance" {
  source = "../modules/terraform-aws-ec2-instance"
  #version = "~> 3.0"

  name = "meta-onboarding-${data.aws_caller_identity.current.user_id}"

  ami                    = var.ami
  instance_type          = var.ec2type
  key_name               = aws_key_pair.generated_key.key_name
  monitoring             = true
  subnet_id              = data.aws_subnet.subnet_target.id
  ebs_optimized          = true
  vpc_security_group_ids = [aws_security_group.meta-sg.id]

  root_block_device = [
    {
      device_name = "/dev/xvda"
      volume_type = "gp2"
      volume_size = 8
      encrypted   = true
    }
  ]
  metadata_options = {
    http_tokens   = "required"
    http_endpoint = "enabled"
  }
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
