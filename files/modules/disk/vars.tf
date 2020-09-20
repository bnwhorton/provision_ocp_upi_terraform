# Disk Resource variables
variable "disk_name" {
  default = ""
}
variable "disk_size" {
  default = "30"
}
variable "disk_format" {
  default = "cow"
}
variable "storage_domain_id" {
  default = ""
}
variable "sparse" {
  default = "true" 
}
variable "shareable" {
  default = "false"
}

# Disk Attachment variables
variable "vm_id" {
  default = ""
}
variable "active" {
  default = "true"
}
variable "bootable" {
  default = "false"
}
variable "interface" {
  default = "virtio_scsi"
}
variable "pass_discard" {
  default = ""
}
variable "read_only" {
  default = "false"
}
variable "use_scsi_reservation" {
  default = "false"
}
