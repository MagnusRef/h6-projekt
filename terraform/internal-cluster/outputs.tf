# gør det muligt at outputte ip adresserne på noderne fra modulet.
# Samt template navn og igition fil
output "ip" {
  value = module.cluster.ip
}

output "template" {
  value = module.cluster.template 
}

output "ignition" {
  value = module.cluster.ignition
}