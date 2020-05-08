# Suricata, Zeek og DNS Capture: An Evening with Packets

Guide to preparing your laptop for training with Kramse

Hey we are doing a training, cool!
I do a lot of training sessions, and I would like for you to enjoy them too.
So please take a few minutes to read this small guide, and prepare your systems.

BTW If you did not read these, forgot to do this - everything will be fine. You may be able to join a group or just lean back and listen.

# Mandatory

**You MUST do this.**

## Bring a laptop

Bring your laptop in good working order. Have updates installed, make sure it can survive the power being interrupted if power cables need re-arranging.

Always use a firewall on your laptop, both for trainings and in general.

## Configure a virtual server

Use the latest released version of Debian with XFCE GUI unless you have a specific reason not to:
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/

May 2020 it seems to be:
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-10.3.0-amd64-xfce-CD-1.iso


Note: if the link does not work, try going to the directory instead - version may have changed:
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/

We will use a few GUI programs, and I recommend allocating 2 cores and 2048MB memory plus 20Gb storage.

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

# Ansible quick-start

We will use Ansible for this training https://www.ansible.com/

I try to test my playbooks using both Ubuntu and Debian Linux, but Debian is the main target for this training.



First make sure your system is updated, as root run:
```
apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade
```
You should reboot if the kernel is upgraded :-)

Second make sure your system has ansible and my playbooks:
(as root run)
```
apt -y install ansible git
git clone https://github.com/kramse/kramse-labs

```

We will run the playbooks locally, while a normal Ansible setup would use SSH to connect to the remote node.

Then it should be easy to run Ansible playbooks, like this:
(again as root, most packet sniffing things will need root too later)
```
cd kramse-labs/suricatazeek
ansible-playbook -v 1-dependencies.yml 2-suricatazeek.yml 3-elasticstack.yml
```

Note: I keep these playbooks flat and simple, but you should investigate Ansible roles for real deployments.

If I update these, it might be necessary to update your copy of the playbooks.
Run this while you are in the cloned repository:
```
git pull
```



Note: usually I would recommend running git clone as your personal user, and then use sudo command to run some commands as root. In a training environment it is OK if you want to run everything as root. Just beware.
