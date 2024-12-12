# **Vagrant Boxes for Different Operating Systems**

This repository contains preconfigured **Vagrantfiles** for setting up development environments on various operating systems. Each directory corresponds to a specific OS, simplifying the process of spinning up virtual machines for testing, development, or deployment.

---
## **Folder Structure**
```
vagrant/
├── aws-amazon-linux-2/
│   └── Vagrantfile
├── centos-7/
│   └── Vagrantfile
└── ubuntu-os/
    └── Vagrantfile
```

## **Contents**

- **`aws-amazon-linux-2/`**
  - Vagrantfile for provisioning a VM with **Amazon Linux 2**.
- **`centos-7/`**
  - Vagrantfile for provisioning a VM with **CentOS 7**.
- **`ubuntu-os/`**
  - Vagrantfile for provisioning a VM with **Ubuntu** (specific version can be checked inside the `Vagrantfile`).

---

## **Usage**

### **Prerequisites**
- [Vagrant](https://www.vagrantup.com/) installed on your machine.
- [VirtualBox](https://www.virtualbox.org/) or another supported provider installed.

---

### **Getting Started**

1. Clone this repository:
   ```bash
   git clone https://github.com/nafiurrashid/vagrant.git
   cd vagrant
```
# **Vagrant Commands**

This document lists all the commonly used Vagrant commands mentioned earlier, along with their descriptions.

---

## **Basic Commands**

### **1. Initialize a New Vagrant Project**
```bash
vagrant init
```


# **Vagrant Commands Reference**

This document provides a comprehensive guide to commonly used Vagrant commands, helping developers efficiently manage virtual machines.

## **Basic Commands**

### **1. Initialize a New Vagrant Project**
```bash
vagrant init
```
- Creates a new `Vagrantfile` in the current directory
- Optionally, can specify a base box: `vagrant init hashicorp/bionic64`

### **2. Start/Provision Virtual Machine**
```bash
vagrant up
```
- Starts and provisions the virtual machine
- If the machine doesn't exist, it will be created
- Reads configuration from the Vagrantfile

### **3. Connect to Virtual Machine**
```bash
vagrant ssh
```
- Connects to the running virtual machine via SSH
- Provides direct shell access to the VM

### **4. Stop Virtual Machine**
```bash
vagrant halt
```
- Gracefully shuts down the running virtual machine
- Preserves the VM state and configuration

### **5. Suspend Virtual Machine**
```bash
vagrant suspend
```
- Pauses the virtual machine
- Saves the exact state of the VM
- Can be resumed later with `vagrant resume`

### **6. Resume Suspended VM**
```bash
vagrant resume
```
- Restarts a previously suspended virtual machine
- Restores the VM to its previous state

### **7. Destroy Virtual Machine**
```bash
vagrant destroy
```
- Completely removes the virtual machine
- Deletes all traces of the VM from the system
- Use `-f` flag to force without confirmation: `vagrant destroy -f`

### **8. Reload VM (Restart)**
```bash
vagrant reload
```
- Restarts the virtual machine
- Reloads the Vagrantfile configuration
- Useful after making changes to the Vagrantfile

### **9. Check VM Status**
```bash
vagrant status
```
- Shows the current state of the virtual machine
- Indicates whether the VM is running, suspended, or stopped

### **10. List Installed Boxes**
```bash
vagrant box list
```
- Displays all Vagrant boxes installed on the system
- Shows box names, providers, and versions

### **11. Update Vagrant Box**
```bash
vagrant box update
```
- Checks for and downloads updates to the base box
- Ensures you have the latest version of the box

### **12. Remove Vagrant Box**
```bash
vagrant box remove <box-name>
```
- Removes a specific Vagrant box from the system
- Example: `vagrant box remove ubuntu/focal64`

## **Additional Tips**
- Always run Vagrant commands from the directory containing the Vagrantfile
- Use `vagrant --help` to see a complete list of available commands
- Each command has additional flags and options for more specific use cases

## **Troubleshooting**
- If you encounter permission issues, try running commands with `sudo`
- Ensure VirtualBox or your chosen provider is properly installed
- Check Vagrant and provider versions for compatibility

## **Contributing**
Found an issue or have a suggestion? Please open an issue or submit a pull request on the repository.

