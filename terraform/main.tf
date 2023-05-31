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
    pm_log_enable = true
    pm_log_file = "terraform-rangebackend.log"
    pm_debug = true
    pm_log_levels = {
        _default = "debug"
        _capturelog = ""
    }

}

variable "win2019_server" {
    type = number
}


variable "win10_pro" {
    type = number
}


variable "kali" {
    type = number
}


variable "ubuntu_desktop" {
    type = number
}


variable "ubuntu_server" {
    type = number
}


variable "securityonion_standalone" {
    type = number
}


resource "proxmox_vm_qemu" "win2019_server" {
    count = var.win2019_server

    name = "tf-win2019-server-${count.index}"
    target_node = "r730"
    clone = "WindowsServer2019"
    full_clone = true
    os_type = "win10"
    sockets = 2
    cores = 4
    memory = "32768"
    scsihw = "virtio-scsi-pci"
    oncreate = true

    disk {
        size = "100G"
        type = "scsi"
        storage = "local"
    }

    network {
        model = "virtio"
        bridge = "vmbr2"
    }
}


resource "proxmox_vm_qemu" "win10_pro" {
    count = var.win10_pro

    name = "tf-win10-pro-${count.index}"
    target_node = "r730"
    clone = "Windows10Pro"
    full_clone = true
    os_type = "win10"
    sockets = 2
    cores = 2
    memory = "4096"
    scsihw = "virtio-scsi-pci"
    oncreate = true 

    disk {
        size = "50G"
        type = "scsi"
        storage = "local"
    }

    network {
        model = "virtio"
        bridge = "vmbr2"
    }

}


resource "proxmox_vm_qemu" "kali" {
    count = var.kali

    name = "tf-kali-${count.index}"
    target_node = "r730"
    clone = "Kali"
    full_clone = true
    os_type = "linux"
    sockets = 2
    cores = 4
    memory = "16384"
    scsihw = "virtio-scsi-pci"
    oncreate = true

    disk {
        size = "100G"
        type = "scsi"
        storage = "local"
    }

    network {
        model = "virtio"
        bridge = "vmbr2"
    }


}


resource "proxmox_vm_qemu" "ubuntu_desktop" {
    count = var.ubuntu_desktop

    name = "tf-ubuntu-desktop-${count.index}"
    target_node = "r730"
    clone = "UbuntuHost"
    full_clone = true
    os_type = "linux"
    sockets = 2
    cores = 2
    memory = "4096"
    scsihw = "virtio-scsi-pci"
    oncreate = true

    disk {
        size = "50G"
        type = "scsi"
        storage = "local"
    }

    network {
        model = "virtio"
        bridge = "vmbr2"
    }


}


resource "proxmox_vm_qemu" "ubuntu_server" {
    count = var.ubuntu_server

    name = "tf-ubuntu-server-${count.index}"
    target_node = "r730"
    clone = "UbuntuServer"
    full_clone = true
    os_type = "linux"
    sockets = 2
    cores = 2
    memory = "4096"
    scsihw = "virtio-scsi-pci"
    oncreate = true 

    disk {
        size = "100G"
        type = "scsi"
        storage = "local"
    }

    network {
        model = "virtio"
        bridge = "vmbr2"
    }

}

resource "proxmox_vm_qemu" "seconion_standalone" {
    count = var.seconion_standalone

    name = "tf-seconion-standalone-${count.index}"
    target_node = "r730"
    clone = "SecurityOnion"
    full_clone = true
    os_type = "linux"
    sockets = 4
    cores = 4
    memory = "32786"
    scsihw = "virtio-scsi-pci"
    oncreate = true

    disk {
        size = "500G"
        type = "scsi"
        storage = "local"
    }

    network {
        model = "virtio"
        bridge = "vmbr2"
    }

}
