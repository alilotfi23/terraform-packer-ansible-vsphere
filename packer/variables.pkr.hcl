variable "CPUs" {
  type    = number
  default = 1
}

variable "RAM" {
  type    = number
  default = 1
}

variable "boot_comand" {
  type = list(string)
  default = [
    "<enter><wait><f6><wait><esc><wait>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
    "<bs><bs><bs>", "/install/vmlinuz noapic ",
    " initrd=/install/initrd.gz", " priority=critical",
    " locale=en_US", "preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/preseed.cfg",
    "<enter>"
  ]

}

variable "boot_wait" {
  type    = string
  default = "20s"
}


variable "cluster" {
  default = "test"
}

variable "datastore" {
  default = "test"
}

variable "disk_controller_type" {
  type    = list(string)
  default = ["pvscsi"]
}

variable "disk_size" {
  type    = number
  default = 40960
}

variable "folder_name" {
  type    = string
  default = "test"
}

variable "guest_os_type" {
  type    = string
  default = "test"
}

variable "insecure_connection" {
  type    = bool
  default = true
}

variable "iso_checksum" {
  type    = string
  default = "8c5fc24894394035402f66f3824beb7234b757dd2b5531379cb310cedfdf0996"
}
variable "iso_path" {
  type    = list(string)
  default = ["[datastore1] ISO/ubuntu-16.04.3-server-amd64.iso"]
}

variable "network" {
  type    = string
  default = "test"
}

variable "network_card" {
  type    = string
  default = "test"
}

variable "password" {
  type    = string
  default = "test"
}

variable "shutdown_command" {
  type    = string
  default = "test"
}

variable "ssh_password" {
  type    = string
  default = "test"
}

variable "ssh_username" {
  type    = string
  default = "test"
}

variable "username" {
  type    = string
  default = "test"
}

variable "vcenter_server" {
  type    = string
  default = "test"
}

variable "vm_name" {
  type    = string
  default = "test"
}

