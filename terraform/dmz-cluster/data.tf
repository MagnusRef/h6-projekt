# Tag kategorien lavet til backup af kubernetes noder
data "vsphere_tag_category" "k8s" {
  name = "Kubernetes Nodes"
}

# Tag navnet der skal sættes på alle worker noder.
data "vsphere_tag" "wrk" {
  name        = "WRK-NODE"
  category_id = data.vsphere_tag_category.k8s.id
}

# Tag navnet der skal sættes på alle controlplane noder.
data "vsphere_tag" "cpl" {
  name        = "CPL-NODE"
  category_id = data.vsphere_tag_category.k8s.id
}