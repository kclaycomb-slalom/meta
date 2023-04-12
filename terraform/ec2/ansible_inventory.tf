resource "local_file" "ansible_inventory" {
  filename = "../../ansible/inventory/hosts.ini"
  content  = <<EOF
[meta]
"${module.ec2_instance.public_ip}"
EOF
}
