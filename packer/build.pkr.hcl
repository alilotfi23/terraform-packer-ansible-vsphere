# Define the Packer configuration
packer {
  # Specify required plugins for this configuration
  required_plugins {
    vsphere = {
      source  = "github.com/hashicorp/vsphere" # Source of the vsphere plugin
      version = "~> 1"                        # Version constraint for the plugin
    }
  }
}

# Define the source configuration for creating a VM using vSphere ISO
source "vsphere-iso" "example" {
  CPUs                 = var.CPUs                # Number of virtual CPUs to allocate
  RAM                  = var.RAM                 # Amount of RAM to allocate (in MB)
  boot_command         = var.boot_command         # Command to execute for booting the VM
  boot_wait            = var.boot_wait            # Time to wait for booting to complete
  cluster              = var.cluster              # vSphere cluster where the VM will be created
  convert_to_template  = true                     # Convert the VM to a template after creation
  datastore            = var.datastore            # Datastore to store the VM
  disk_controller_type = var.disk_controller_type # Type of disk controller to use
  folder               = var.folder_name          # Folder in vCenter to place the VM
  guest_os_type        = var.guest_os_type        # Type of guest OS for the VM
  insecure_connection  = var.insecure_connection  # Allow insecure connections (use with caution)
  iso_checksum         = var.iso_checksum         # Checksum for the ISO file for verification
  iso_paths            = var.iso_path             # Path to the ISO file to use for installation
  network_adapters {                               # Network adapter configuration
    network      = var.network                    # Network to connect the VM to
    network_card = var.network_card               # Type of network card to use
  }
  password               = var.password            # Password for the VM's OS
  shutdown_command       = var.shutdown_command    # Command to gracefully shut down the VM
  ssh_handshake_attempts = "100"                  # Number of SSH handshake attempts before failing
  ssh_password           = var.ssh_password        # SSH password for remote access
  ssh_port               = 22                       # SSH port (default is 22)
  ssh_timeout            = "20m"                   # Timeout for SSH connection attempts
  ssh_username           = var.ssh_username        # Username for SSH access
  storage {                                        # Storage configuration for the VM
    disk_size             = var.disk_size          # Size of the virtual disk (in GB)
    disk_thin_provisioned = true                   # Use thin provisioning for the disk
  }
  username       = var.username                    # vCenter username for authentication
  vcenter_server = var.vcenter_server              # vCenter server address
  vm_name        = var.vm_name                    # Name of the VM to be created
}

# Define the build section to specify which sources to use
build {
  sources = ["source.vsphere-iso.example"]        # Reference the defined source for building the VM
}
