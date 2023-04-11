resource "tls_private_key" "user_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "${local.extracted_user}-key"
  public_key = tls_private_key.user_key.public_key_openssh
}
