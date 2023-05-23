terraform {
    required_providers {
        proxmox = {
            source = "telmate/proxmox"
            version = "2.9.14"
        }
    }
}

variable "PM_USER" {
    type = string
}

variable "PM_PASSWORD" {
    type = string
}

provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://192.168.100.2:8006/api2/json"
    pm_user = var.PM_USER 
    pm_password = var.PM_PASSWORD

}

resource "proxmox_vm_qemu" "win2019_server" {

    name = "win2019-server"
    target_node = "r730"
    clone = "WindowsServer2019"
    full_clone = true
    sockets = 2
    cores = 2
    memory = "4096"
    scsihw = "virtio-scsi-pci"
    onboot = true

    disk {
        size = "50G"
        type = "scsi0"
        storage = "local"
    }

    network {
        model = "virtio"
        bridge = "vmbr2"
    }
    bootdisk = "scsi0"
}


//resource "proxmox_vm_qemu" "win10_desktop" {
//
//  name = "win10"
//  target_node = "r730"
//  iso = "local:iso/win10raw.iso"
//  os_type = "win10"
//  sockets = 2
//  cores = 4
//  memory = "4096"
//  scsihw = "virtio-scsi-pci"
//
//  disk {
//      size = "50G"
//      type = "scsi"
//      storage = "local"
//  }
//
//  network {
//      model = "virtio"
//      bridge = "vmbr2"
//  }
//  bootdisk = "scsi0"

//}

//resource "proxmox_vm_qemu" "kali" {
    
//  name = "kali-blank"
//  target_node = "r730"
//  iso = "local:iso/kaliraw.iso"
//  os_type = "linux"
//  sockets = 2
//  cores = 4
//  memory = "4096"
//  scsihw = "virtio-scsi-pci"
//
//  disk {
//      size = "50G"
//      type = "scsi"
//      storage = "local"
//  }
//
//  network {
//      model = "virtio"
//      bridge = "vmbr2"
//  }
//
//  bootdisk = "scsi0"
  

//}

//resource "proxmox_vm_qemu" "ubuntu_desktop" {

//  name = "ubuntu-desktop-blank"
//  target_node = "r730"
//  iso = "local:iso/ubuntudesktopraw.iso"
//  os_type = "linux"
//  sockets = 2
//  cores = 4
//  memory = "4096"
//  scsihw = "virtio-scsi-pci"
//
//  disk {
//      size = "50G"
//      type = "scsi"
//      storage = "local"
//  }
//
//  network {
//      model = "virtio"
//      bridge = "vmbr2"
//  }
//
//  bootdisk = "scsi0"

//}

