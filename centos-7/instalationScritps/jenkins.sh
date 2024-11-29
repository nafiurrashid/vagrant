#!/bin/sh
# Author : Nafiur Rashid
echo "Update yum>>>>>>>>>>>>>>>>"
yum update -y
echo "installing vim, curl, wget, open-vm-tools, git>>>>>>>>>>>>>>>>"
yum install vim curl wget open-vm-tools git -y
echo "installing java >>>>>>>>>>>>>>>>"
yum install java-11-openjdk.x86_64 -y
echo "disableing SELINUX>>>>>>>>>>>>>>>>"
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
echo "disableing Firewall>>>>>>>>>>>>>>>>"
systemctl disable firewalld
systemctl stop firewalld
echo "installing jenkins>>>>>>>>>>>>>>>>"
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key
yum install jenkins -y
echo "enabling jenkins>>>>>>>>>>>>>>>>"
systemctl enable jenkins
systemctl start jenkins
echo "installing ansible>>>>>>>>>>>>>>>>"
sudo yum install epel-release
#yum install ansible -y
echo "here is your IP addres>>>>>>>>>>>>>>>>"
hostname -I | awk '{print $2}'
echo "finding admin password of jenkins>>>>>>>>>>>>>>>>"
echo "please copy following password>>>>>>>>>>>>>>>>"
cat /var/lib/jenkins/secrets/initialAdminPassword
