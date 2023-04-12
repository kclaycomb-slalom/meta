resource "local_file" "ansible_inventory" {
  depends_on = [
    module.ec2_instance.public_ip
  ]
  filename = "../../ansible/inventory/hosts.ini"
  #  lifecycle {
  #    ignore_changes = content
  #  }
  content = <<EOF
[meta_instances]
"${module.ec2_instance.public_ip}"
EOF
}
