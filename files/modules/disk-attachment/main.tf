resource "ovirt_disk_attachment" "diskattachment" {
  vm_id			= "${var.vm_id}"
  disk_id		= "${var.disk_id}"
  active		= "${var.active}"
  bootable		= "${var.bootable}"
  interface		= "${var.interface}"
  read_only		= "${var.read_only}"
  use_scsi_reservation	= "${var.use_scsi_reservation}"
}
