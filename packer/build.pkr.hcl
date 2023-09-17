packer {
  required_plugins {
    vsphere = {
      source  = "github.com/hashicorp/vsphere"
      version = "~> 1"
    }
  }
}

source "vsphere-iso" "example" {
  CPUs                 = var.CPUs
  RAM                  = var.RAM
  boot_command         = var.boot_comand
  boot_wait            = var.boot_wait
  cluster              = var.cluster
  convert_to_template  = true
  datastore            = var.datastore
  disk_controller_type = var.disk_controller_type
  folder               = var.folder_name
  guest_os_type        = var.guest_os_type
  insecure_connection  = var.insecure_connection
  iso_checksum         = var.iso_checksum
  iso_paths            = var.iso_path
  network_adapters {
    network      = var.network
    network_card = var.network_card
  }
  password               = var.password
  shutdown_command       = var.shutdown_command
  ssh_handshake_attempts = "100"
  ssh_password           = var.ssh_password
  ssh_port               = 22
  ssh_timeout            = "20m"
  ssh_username           = var.ssh_username
  storage {
    disk_size             = var.disk_size
    disk_thin_provisioned = true
  }
  username       = var.username
  vcenter_server = var.vcenter_server
  vm_name        = var.vm_name
}

build {
  sources = ["source.vsphere-iso.example"]

}

