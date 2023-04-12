
# NOTE: can't use this because Slalom's federated username contains "/"
#resource "aws_iam_user_ssh_key" "user" {
#  username   = "AWS-InnovationLabs-SF-Admin/kirkl@slalom.com"
#  encoding   = "SSH"
#  public_key = local.ssh_public_key
#}

resource "aws_key_pair" "generated_key" {
  key_name   = "${local.extracted_user}-key"
  public_key = local.ssh_public_key
}
