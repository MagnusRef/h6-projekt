# gør det muligt at outputte ip adresserne på noderne fra modulet.
# Samt template navn og igition fil
output "ip" {
  value = var.nodes[*].ipv4
}

output "template" {
  value = data.vsphere_virtual_machine.template.name
}

output "ignition" {
  value = file("${path.module}/node-ignition.yaml.tftpl")
}