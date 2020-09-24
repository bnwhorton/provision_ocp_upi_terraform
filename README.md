# Ansible Collection - cadjai.provision_ocp_upi_infra

This Ansible collection comprises several roles and plays as well as terraform modules to enable resource provisioning on various platforms.
The first version will focus on using ovirt and then later use kvm and possibly openstack and any other virtulization platform without official
terraform providers and modules.
The current version assumes that you have Terraform v012 installed and that the ovirt provider plugin is also already installed and configured. 
There is an optional playbook to install Terraform but that is currently installing the latest version.

---
**NOTE**

There currently is a bug in RHV/Ovirt whereby the attachment of multiple virtio-iscsi disks fails.
There are several closed bugzilla related to the issue (1819162, 1506677). 
However it is still happening on RHV 4.3. 
This does not prevent the playbook from completing since that error is being ignored but need to be further investigated. All resources are being creatred but only the root disk and the first additional disk are attached. The others will need to be manually attached as a workaround for the time being.
Another error is related to the terraform ovirt provider throwing an error when multiple ovirt_vm resources are being created. When given enough time the resources are all provisioned and therefore this error is also being ignored.

 
---

## Installation and Usage

### Installing the Collection from Ansible Galaxy
This is not hosted in galaxy yet. Therefore you will need to clone this repository and then 
run the ansible-galaxy command to install all required dependencies like 
`ansible-galaxy install -r requirements -p roles`

### Prerequisites
It is assumed that you have Terrafom v012 installed and configured on the bastion and that you also have go installed in order to be able to build and run the terraform ovirt provider. For more information on how to install the provider please refer to https://github.com/oVirt/terraform-provider-ovirt.
You also need ansible and python installed on the bastion. 
### Playbooks
To run the main playbook use the ansible-playbook command as follows
`ansible-plabook -i inventory/ site.yml`

To run a module or targeted playbook use the same command with the appropriate playbook.

## Contributing


## Testing and Development


