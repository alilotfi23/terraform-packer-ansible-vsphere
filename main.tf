module "my_vm_module" {
  source = "./my_terraform_module"

  # Set your variables here
  vsphere_user        = "your_vsphere_user"
  vsphere_password    = "your_vsphere_password"
  vsphere_ip_address  = "your_vcenter_server_ip"
  vsphere_datacenter  = "your_datacenter_name"
  vsphere_cluster     = "your_cluster_name"
  datastore           = "your_datastore_name"
  vm_cpu              = 2
  vm_ram              = 4096
  vm_name             = "your_vm_name"
  vm_size             = 50
  vsphere_unverified_ssl = true  # or false based on your needs
  vm_network          = "your_vm_network"
  cluster_name        = "your_cluster_name"
}
