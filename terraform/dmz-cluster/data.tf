
data "vsphere_tag_category" "k8s" {
  name = "Kubernetes Nodes"
}

data "vsphere_tag" "wrk" {
  name        = "WRK-NODE"
  category_id = data.vsphere_tag_category.k8s.id
}

data "vsphere_tag" "cpl" {
  name        = "WRK-NODE"
  category_id = data.vsphere_tag_category.k8s.id
}