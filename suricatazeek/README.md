# Suricata, Bro og DNS Capture: An Evening with Packets

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

Use the Debian 9.5 with XFCE GUI unless you have a specific reason not to:
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-9.5.0-amd64-xfce-CD-1.iso

We will use a few GUI programs, and I recommend allocating 2 cores and 2048MB memory plus 20Gb storage.

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
apt install ansible git
git clone https://github.com/kramse/kramse-labs

```

Then it should be easy to run Ansible playbooks, like this:
(again as root, most packet sniffing things will need root too later)
```
cd kramse-labs/suricatabro
ansible-playbook -v dependencies.yml suricatabro.yml
```

Note: I keep these playbooks flat and simple, but you should investigate Ansible roles for real deployments.

If I update these, it might be necessary to update your copy of the playbooks.
Run this while you are in the cloned repository:
```
git pull
```



Note: usually I would recommend running git clone as your personal user, and then use sudo command to run some commands as root. In a training environment it is OK if you want to run everything as root. Just beware.
