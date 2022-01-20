# Installing Docker on Debian for lab purposes


Installing docker require a few commands, of which some can fail.

This directory contains dirty Ansible playbooks, that allow you to re-run the commands in case some of them fail.

They require internet to download, and on a fast connection will install in 10-15minutes.

The list of applications include:
* Docker



# Instructions

Mandatory **You MUST do this.**


# Setup Sudo

We will use Ansible below with sudo - execute a command as another user

To setup a lab system for sudo without password do:

Switch to super user and edit config:
```
su -
export EDITOR=nano
visudo
```

This should bring up the nano editor with the sudoers config file. Edit this to have the following text, with your username instead of mine - hkj:
```
# User privilege specification
root	ALL=(ALL:ALL) ALL
hkj	ALL=(ALL:ALL) NOPASSWD: ALL
```

Exit nano using ctrl-x   (control + X) and save the file, check using:

```
hkj@debian-11:~ $ sudo su -
hkj@debian-11:~ #
```


# Ansible quick-start

We will use Ansible for this training https://www.ansible.com/

I test my playbooks using Debian Linux.

First make sure your system is updated, **as root run**:
```
apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade
```
You should reboot if the kernel is upgraded :-)

Second make sure your system has ansible and Git, **as root run**
```
apt -y install ansible git
```

Second make sure your system has my playbooks, **as your personal user run**
```
git clone https://github.com/kramse/kramse-labs
```

We will run the playbooks locally, while a normal Ansible setup would use SSH to connect to the remote node.

Then it should be easy to run Ansible playbooks, like this:
(again as root, most packet sniffing things will need root too later)
```
cd kramse-labs/docker-install
ansible-playbook -v 1-dependencies.yml
```

Note: I keep these playbooks flat and simple, but you should investigate Ansible roles for real deployments.

If I update these, it might be necessary to update your copy of the playbooks.
Run this while you are in the cloned repository:
```
git pull
```



Note: usually I would recommend running git clone as your personal user, and then use sudo command to run some commands as root. In a training environment it is OK if you want to run everything as root. Just beware.
