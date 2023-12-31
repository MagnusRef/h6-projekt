# Hovedmodul, der opretter virtuelle maskiner baseret på det definerede input.
module "cluster" {
  source = "../modules/cluster"

  # Oplysninger på vSphere miljøet.
  vsphere = {
    cluster    = "BAL-CLUST-P01"
    datacenter = "BAL-DATAC-P01"
    portgroup  = "VLAN20"
    datastore  = "vsanDatastore"
    template   = "flatcar-linux-stable-template"
    folder     = "Internt Kubernetes Cluster"
  }

  # Liste over noder der skal oprettes, med deres specs og indstillinger.
  nodes = [
    {
      hostname = "BAL-CPL-P01"
      fqdn     = "bal-cpl-p01.malumn.local"
      vcpu     = 2
      memory   = 4048
      tags    = [data.vsphere_tag.cpl.id]
      ipv4     = "10.20.0.45/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.20.0.3"
      size     = 45
    },
    {
      hostname = "BAL-CPL-P02"
      fqdn     = "bal-cpl-p02.malumn.local"
      vcpu     = 2
      memory   = 4048
      tags    = [data.vsphere_tag.cpl.id]
      ipv4     = "10.20.0.46/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.20.0.3"
      size     = 45
    },
    {
      hostname = "BAL-CPL-P03"
      fqdn     = "bal-cpl-p03.malumn.local"
      vcpu     = 2
      memory   = 4048
      tags    = [data.vsphere_tag.cpl.id]
      ipv4     = "10.20.0.47/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.20.0.3"
      size     = 45
    },
    {
      hostname = "BAL-WRK-P01"
      fqdn     = "bal-wrk-p01.malumn.local"
      vcpu     = 4
      memory   = 8192
      tags    = [data.vsphere_tag.wrk.id]
      ipv4     = "10.20.0.48/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.20.0.3"
      size     = 256
    },
    {
      hostname = "BAL-WRK-P02"
      fqdn     = "bal-wrk-p02.malumn.local"
      vcpu     = 4
      memory   = 8192
      tags    = [data.vsphere_tag.wrk.id]
      ipv4     = "10.20.0.49/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.20.0.3"
      size     = 256
    },
    {
      hostname = "BAL-WRK-P03"
      fqdn     = "bal-wrk-p03.malumn.local"
      vcpu     = 4
      memory   = 8192
      tags    = [data.vsphere_tag.wrk.id]
      ipv4     = "10.20.0.50/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.20.0.3"
      size     = 256
    },
  ]
}