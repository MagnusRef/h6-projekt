module "cluster" {
  source = "../modules/cluster"
  vsphere = {
    cluster    = "BAL-CLUST-P01"
    datacenter = "BAL-DATAC-P01"
    portgroup  = "VLAN20"
    datastore  = "vsanDatastore"
    template   = "flatcar-linux-stable-template"
    folder     = "Internt Kubernetes Cluster"
  }
  nodes = [
    {
      hostname = "BAL-CPL-P01"
      fqdn     = "bal-cpl-p01.malumn.local"
      vcpu     = 2
      memory   = 4048
      ipv4     = "10.20.0.45/24"
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
      ipv4     = "10.20.0.46/24"
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
      ipv4     = "10.20.0.47/24"
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
      ipv4     = "10.20.0.48/24"
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
      ipv4     = "10.20.0.49/24"
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
      ipv4     = "10.20.0.50/24"
      dns1     = "10.20.0.4"
      dns2     = "10.20.0.5"
      gw       = "10.20.0.3"
      size     = 256
    },
  ]
}