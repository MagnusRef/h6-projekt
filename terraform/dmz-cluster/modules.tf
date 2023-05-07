# Hovedmodul, der opretter virtuelle maskiner baseret på det definerede input.
module "cluster" {
  source = "../modules/cluster"

  # Oplysninger på vSphere miljøet.
  vsphere = {
    cluster    = "BAL-CLUST-P01"
    datacenter = "BAL-DATAC-P01"
    portgroup  = "VLAN30"
    datastore  = "vsanDatastore"
    template   = "flatcar-linux-stable-template"
    folder     = "DMZ Kubernetes Cluster"
  }
  
  # Liste over noder der skal oprettes, med deres specs og indstillinger.
  nodes = [
    {
      hostname = "BAL-CPL-DZ01"
      fqdn     = "bal-cpl-dz01.malumn.local"
      vcpu     = 2
      memory   = 4048
      tags    = [data.vsphere_tag.cpl.id]
      ipv4     = "10.30.0.10/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.30.0.3"
      size     = 45
    },
    {
      hostname = "BAL-CPL-DZ02"
      fqdn     = "bal-cpl-dz02.malumn.local"
      vcpu     = 2
      memory   = 4048
      tags    = [data.vsphere_tag.cpl.id]
      ipv4     = "10.30.0.11/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.30.0.3"
      size     = 45
    },
    {
      hostname = "BAL-CPL-DZ03"
      fqdn     = "bal-cpl-dz03.malumn.local"
      vcpu     = 2
      memory   = 4048
      tags    = [data.vsphere_tag.cpl.id]
      ipv4     = "10.30.0.12/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.30.0.3"
      size     = 45
    },
    {
      hostname = "BAL-WRK-DZ01"
      fqdn     = "bal-wrk-dz01.malumn.local"
      vcpu     = 4
      memory   = 8192
      tags    = [data.vsphere_tag.wrk.id]
      ipv4     = "10.30.0.20/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.30.0.3"
      size     = 45
    },
    {
      hostname = "BAL-WRK-DZ02"
      fqdn     = "bal-wrk-dz02.malumn.local"
      vcpu     = 4
      memory   = 8192
      tags    = [data.vsphere_tag.wrk.id]
      ipv4     = "10.30.0.21/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.30.0.3"
      size     = 45
    },
    {
      hostname = "BAL-WRK-DZ03"
      fqdn     = "bal-wrk-dz03.malumn.local"
      vcpu     = 4
      memory   = 8192
      tags    = [data.vsphere_tag.wrk.id]
      ipv4     = "10.30.0.22/16"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.30.0.3"
      size     = 45
    },
  ]
}