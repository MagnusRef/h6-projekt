# indhenter data omkring vsphere datacenteret baseret på navnet når modulet bliver kaldt.
data "vsphere_datacenter" "datacenter" {
  name = var.vsphere.datacenter
}

# indhenter data omkring vsphere datastore baseret på navnet når modulet bliver kaldt.
data "vsphere_datastore" "datastore" {
  name          = var.vsphere.datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

# indhenter data omkring vsphere cluster baseret på navnet når modulet bliver kaldt.
data "vsphere_compute_cluster" "cluster" {
  name          = var.vsphere.cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

# indhenter data omkring vsphere portgroup baseret på navnet når modulet bliver kaldt.
data "vsphere_network" "network" {
  name          = var.vsphere.portgroup
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

# indhenter data omkring vsphere template baseret på navnet når modulet bliver kaldt.
data "vsphere_virtual_machine" "template" {
  name          = var.vsphere.template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

# looper igennem variablen nodes for at oprette igition templates til hver virtuel maskine, som så bruges i vsphere_virtual_machine til at boostrappe dem med de rigtige konfigurationer.
data "ct_config" "ignition" {
  for_each = { for node in var.nodes : node.hostname => node }
  content = templatefile("${path.module}/node-ignition.yaml.tftpl", {
    hostname = each.value.hostname
    ipv4     = each.value.ipv4
    gw4      = each.value.gw
    dns1     = each.value.dns1
    dns2     = each.value.dns2
  })
}
