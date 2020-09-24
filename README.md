# Ansible Collection - cadjai.provision_ocp_upi_infra

This Ansible collection comprises several roles and plays as well as terraform modules to enable resource provisioning on various platforms.
The first version will focus on using ovirt and then later use kvm and possibly openstack and any other virtulization platform without official
terraform providers and modules.
The current version assumes that you have Terraform v012 installed and that the ovirt provider plugin is also already installed and configured. 
There is an optional playbook to install Terraform but that is currently installing the latest version.

---
**NOTE**
There currently is a bug in RHV/Ovirt whereby the attachment of multiple virtio-iscsi disks fails. 
There are several bugzilla (1819162, 1506677) for this even though there were supposedly fixed 
but I am still seeing in RHV 4.3. This failure does not prevent the playbook from completing. 
The disks are all created and so are the VMs but only the first additional and the root disks are 
attached. The workaround is to manually attach those after playbook completion. 
Because of the existing workaround the error are ingored for the time being

The terraform ovirt provider is throwing error when provisioning multiple ovirt_vm but that error does not prevent the provisioning from completing.
Again for this the error is currently being ignored until it can be further investigated.  
