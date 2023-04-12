#resource "aws_eip" "ip-test-env" {
#  instance = module.ec2_instance.id
#  vpc      = true
#}

resource "aws_security_group" "meta-sg" {
  vpc_id      = var.vpc_id
  description = "SSH in from terraform host"
  ingress {
    description = "SSH in from terraform host"
    cidr_blocks = ["${chomp(data.http.myip.body)}/32"]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
  tags = {
    name = "meta-${local.extracted_user}-sg"
  }
}
