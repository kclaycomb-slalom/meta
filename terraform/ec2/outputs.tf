output "private_key" {
  value     = tls_private_key.user_key.private_key_pem
  sensitive = true
}

output "id" {
  description = "The ID of the instance"
  value       = module.ec2_instance.id
}

output "arn" {
  description = "The ARN of the instance"
  value       = module.ec2_instance.arn
}

output "capacity_reservation_specification" {
  description = "Capacity reservation specification of the instance"
  value       = module.ec2_instance.capacity_reservation_specification
}

output "instance_state" {
  description = "The state of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`"
  value       = module.ec2_instance.instance_state
}

output "password_data" {
  description = "Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if `get_password_data` is true"
  value       = module.ec2_instance.password_data
}

output "primary_network_interface_id" {
  description = "The ID of the instance's primary network interface"
  value       = module.ec2_instance.primary_network_interface_id
}

output "private_dns" {
  description = "The private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2_instance.private_dns
}

output "public_dns" {
  description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2_instance.public_dns
}

output "public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_instance.public_ip
}

output "private_ip" {
  description = "The private IP address assigned to the instance."
  value       = module.ec2_instance.private_ip
}

output "ipv6_addresses" {
  description = "The IPv6 address assigned to the instance, if applicable."
  value       = module.ec2_instance.ipv6_addresses
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block"
  value       = module.ec2_instance.tags_all
}

/*################################################################################
# IAM Role / Instance Profile
################################################################################

output "iam_role_name" {
  description = "The name of the IAM role"
  value       = module.ec2_instance.aws_iam_role.name
}

output "iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role"
  value       = module.ec2_instance.aws_iam_role.arn
}

output "iam_role_unique_id" {
  description = "Stable and unique string identifying the IAM role"
  value       = module.ec2_instance.aws_iam_role.unique_id
}

output "iam_instance_profile_arn" {
  description = "ARN assigned by AWS to the instance profile"
  value       = module.ec2_instance.aws_iam_instance_profile.arn
}

output "iam_instance_profile_id" {
  description = "Instance profile's ID"
  value       = module.ec2_instance.aws_iam_instance_profile.id
}

output "iam_instance_profile_unique" {
  description = "Stable and unique string identifying the IAM instance profile"
  value       = module.ec2_instance.aws_iam_instance_profile.unique_id
}*/
