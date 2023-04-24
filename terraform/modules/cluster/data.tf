data "vsphere_datacenter" "datacenter" {
  name = var.vsphere.datacenter
}

data "vsphere_datastore" "datastore" {
  name          = var.vsphere.datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.vsphere.cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = var.vsphere.portgroup
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "template" {
  name          = var.vsphere.template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

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