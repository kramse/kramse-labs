# Suricata, Zeek, SIEM, Logging and Elastic stack

These instructions are used in multiple courses and events:
* Suricata, Zeek og DNS Capture: An Evening with Packets
* SIEM and Logging, course on KEA

The Ansible playbooks included in this folder will allow you to install a long list of applications easily.

They require internet to download, and on a fast connection will install in 10-15minutes.

The list of applications include:
* Elasticsearch (ES)
* Kibana - front end for ES
* Filebeat - for reading files and sending data to ES
* Logstash - mostly unused since Filebeat has taken over
* Zeek - reads network packets and decodes them into JSON
* Suricata - robust and modern threat detection engine
* Various other tools like Wireshark, Tcpdump, Nmap

By default they will be started too! If your system is tight on memory this will be bad. So disable the applications you don't need using systemctl, for instance logstash.

```
systemctl disable logstash
systemctl stop logstash
```

or edit the Ansible playbooks


# Instructions

Mandatory **You MUST do this.**

## Bring a laptop

Bring your laptop in good working order. Have updates installed, make sure it can survive the power being interrupted if power cables need re-arranging.

Always use a firewall on your laptop, both for trainings and in general.

## Configure a virtual Debian server

We will use a recent Debian version  with XFCE GUI, currently Debian 12.
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/

Direct link, checked Nov 2021:

https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.2.0-amd64-netinst.iso

Note: if the link does not work - version may have changed, so use the directory link above.

We will use a few GUI programs, and I recommend allocating 2 cores and 4096MB memory plus 40Gb storage as a minimum.

I recommend the install with:
* all files in a single file system
* Use network mirror - make sure CD is NOT enabled in /etc/apt/sources.list after install
* SSH server installed
* Sudo installed, apt-get install sudo

Also if you are running on VMware then install the Open VMware Tools:
```
apt-get install -y open-vm-tools-desktop
```
on virtualbox install the "additions"
```
apt-get install -y virtualbox-guest-x11
```
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
hkj@debian-12:~ $ sudo su -
hkj@debian-12:~ #
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
cd kramse-labs/suricatazeek
ansible-playbook -v 1-dependencies.yml 2-suricatazeek.yml 3-elasticstack.yml 4-configuration.yml
```

Note: I keep these playbooks flat and simple, but you should investigate Ansible roles for real deployments.

If I update these, it might be necessary to update your copy of the playbooks.
Run this while you are in the cloned repository:
```
git pull
```



Note: usually I would recommend running git clone as your personal user, and then use sudo command to run some commands as root. In a training environment it is OK if you want to run everything as root. Just beware.
