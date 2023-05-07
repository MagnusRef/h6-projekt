
# vsphere oplysninger der bliver kaldt med modulet.
variable "vsphere" {
  type = map(any)
}


# liste af noder der bliver kaldt med modulet.
variable "nodes" {
  type = list(any)
}
