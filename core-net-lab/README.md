# Core Infrastructure and BGP intro: Building a production network

Guide to preparing your hardware for training with Kramse

Hey we are doing a training, cool!
I do a lot of training sessions, and I would like for you to enjoy them too.
So please take a few minutes to read this small guide, and prepare your systems.

BTW If you did not read these, forgot to do this - everything will be fine. You may be able to join a group or just lean back and listen.

# Mandatory

**You MUST do this.**

## Bring a laptop

Bring your laptop in good working order. Have updates installed, make sure it can survive the power being interrupted if power cables need re-arranging.

Always use a firewall on your laptop, both for trainings and in general.

## Configure a Debian

We will need a Debian "router", so a system installed with Debian. The recommended versions are a Virtual Machine or a small device like a Raspberry Pi.

Use the Debian 10 with XFCE GUI unless you have a specific reason not to:
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-*version* -amd64-xfce-CD-1.iso

Note: if the link does not work, try going to the directory instead - version may have changed:
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/


I recommend the install with:
* all files in a single file system
* Use network mirror - make sure CD is NOT enabled in /etc/apt/sources.list after install
* SSH server installed
* Sudo installed, apt-get install sudo


# Ansible quick-start

We will use Ansible for this training https://www.ansible.com/

You must have at least one place, system able to run Ansible.

You may be able to use Windows as a client, but untested.

I try to test my playbooks using both Ubuntu and Debian Linux, but Debian is the main target for this training. So you may be happy if you bring a virtual machine with 20Gb disk.

Use the Debian 9 with XFCE GUI unless you have a specific reason not to:
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-9.6.0-amd64-xfce-CD-1.iso


First make sure your system is updated, as root run:
```
apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade
```
You should reboot if the kernel is upgraded :-)

Second make sure your system has ansible and my playbooks:
(as root run)
```
apt install ansible git
git clone https://github.com/kramse/kramse-labs

```

Then it should be easy to run Ansible playbooks, like this:
(again as root, most packet sniffing things will need root too later)
```
cd kramse-labs/core-net-lab
ansible-playbook -v 1-dependencies.yml 2-core-net-lab.yml
```

Note: I keep these playbooks flat and simple, but you should investigate Ansible roles for real deployments.

If I update these, it might be necessary to update your copy of the playbooks.
Run this while you are in the cloned repository:
```
git pull
```



Note: usually I would recommend running git clone as your personal user, and then use sudo command to run some commands as root. In a training environment it is OK if you want to run everything as root. Just beware.
