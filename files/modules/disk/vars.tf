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

