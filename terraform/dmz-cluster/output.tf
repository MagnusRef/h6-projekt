# gør det muligt at outputte ip adresserne på noderne fra modulet.
output "ip" {
  value = module.cluster.ip
}

output "template" {
  value = module.cluster.template 
}

output "ignition" {
  value = module.cluster.ignition
}