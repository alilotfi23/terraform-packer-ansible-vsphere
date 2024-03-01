output "vm_ip_address" {
  description = "The IP address of the provisioned virtual machine"
  value       = vsphere_virtual_machine.vm.network_interface[0].ipv4_address
}

output "vm_name" {
  description = "The name of the provisioned virtual machine"
  value       = vsphere_virtual_machine.vm.name
}

output "datastore_id" {
  description = "The ID of the selected datastore"
  value       = data.vsphere_datastore.datacenter.id
}

output "cluster_name" {
  description = "The name of the selected compute cluster"
  value       = data.vsphere_compute_cluster.cluster.name
}
