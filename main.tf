# Import the module for creating a virtual machine
module "my_vm_module" {
  # Specify the path to the Terraform module that defines the VM resources
  source = "./my_terraform_module"

  # Set your vSphere credentials and server details
  vsphere_user           = "your_vsphere_user"          # Username for vSphere authentication
  vsphere_password       = "your_vsphere_password"       # Password for vSphere authentication
  vsphere_ip_address     = "your_vcenter_server_ip"      # IP address of the vCenter server
  vsphere_datacenter     = "your_datacenter_name"        # Name of the vSphere datacenter
  vsphere_cluster        = "your_cluster_name"            # Name of the compute cluster
  datastore              = "your_datastore_name"          # Name of the datastore where the VM will reside
  
  # Configure VM specifications
  vm_cpu                 = 2                              # Number of virtual CPUs for the VM
  vm_ram                 = 4096                           # Amount of RAM for the VM in MB
  vm_name                = "your_vm_name"                 # Name to assign to the virtual machine
  vm_size                = 50                             # Size of the VM's disk in GB
  
  # SSL configuration for vSphere connection
  vsphere_unverified_ssl = true                           # Allow unverified SSL connections (use with caution)
  
  # Network configuration for the VM
  vm_network             = "your_vm_network"              # Name of the network to connect the VM
  
  # Additional parameters for VM configuration
  cluster_name           = "your_cluster_name"            # Name of the cluster for VM placement
  guest_id               = "your_guest_id"                # ID of the guest OS to be used for the VM
  path                   = "your_path"                    # Path for storing VM-related files
}

# Output the name of the provisioned virtual machine
output "vm_name" {
  description = "The name of the provisioned virtual machine"  # Description of the output variable
  value       = module.my_vm_module[*].vm_name                # Value to output: the name from the module
}

# Output the ID of the selected datastore
output "datastore_id" {
  description = "The ID of the selected datastore"            # Description of the output variable
  value       = module.my_vm_module[*].datastore_id          # Value to output: the datastore ID from the module
}

# Output the name of the selected compute cluster
output "cluster_name" {
  description = "The name of the selected compute cluster"    # Description of the output variable
  value       = module.my_vm_module[*].cluster_name          # Value to output: the cluster name from the module
}
