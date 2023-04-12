resource "local_file" "ansible_inventory" {
  filename = "../../ansible/inventory/hosts.ini"
  #  lifecycle {
  #    ignore_changes = content
  #  }
  content = <<EOF
[meta]
"${module.ec2_instance.public_ip}"
EOF
}
