resource "ovirt_disk" "disk" {
  name		    = "${var.disk_name}"
  alias		    = "${var.disk_name}"
  size		    = "${var.disk_size}"
  format	    = "${var.disk_format}"
  storage_domain_id = "${var.storage_domain_id}"
  sparse	    = "${var.sparse}"
  shareable	    = "${var.shareable}"
}

