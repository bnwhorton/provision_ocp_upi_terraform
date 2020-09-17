# Ansible Collection - cadjai.provision_ocp_upi_infra

This Ansible collection comprises several roles and plays as well as terraform modules to enable resource provisioning on various platforms.
The first version will focus on using ovirt and then later use kvm and possibly openstack and any other virtulization platform without official
terraform providers and modules.
The current version assumes that you have Terraform v012 installed and that the ovirt provider plugin is also already installed and configured. 
There is an optional playbook to install Terraform but that is currently installing the latest version.
