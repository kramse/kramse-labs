# kramse-labs
Guide to preparing your laptop for training with Kramse

Hey we are doing a training, cool!
I do a lot of training sessions, and I would like for you to enjoy them too.
So please take a few minutes to read this small guide, and prepare your systems.

BTW If you did not read these, forgot to do this - everything will be fine. You may be able to join a group or just lean back and listen.

**Beware** though that if the rest of the group DID do this it would be unfair for me to spend a lot of time walking you through these steps. So I will give you a link to this guide and ask you to follow these instructions.

If we are doing a "hackerday" you dont need to prepare, but can use the time on-site for doing exactly this - getting your own hacker lab up and running.

## About skills

Working in IT-security requires a lot of different skills. Among those we see a lot of organisations that require or need skills like these:

* Knowledge about virtualisation
* Linux/Unix skills
* Various apps like Docker, Web servers, etc.

To help you get these skills the courses run by me often require practical exercises to get the most of the lectures.

So for learning in IT-security I highly recommend following the instructions below.


# Mandatory

**You MUST do this.**

## Bring a laptop

Bring your laptop in good working order. Have updates installed, make sure it can survive the power being interrupted if power cables need re-arranging.

Always use a firewall on your laptop, both for trainings and in general.

Minimum requirements for pc’s:

* at least 8GB RAM (16GB recommended)
* 200 GB free disk

* at least 8 GB RAM(16 GB recommended)
* 200 GB free disk.

Windows, Mac or Linux PC are the most common platforms used, but if you can run virtul machines you can use another operating system.

Note: I can only help a little with operating system support.

Note: if you are using a very old laptop you might be able to find cheap upgrades that may improve your daily life. I suggest memory upgrades to 16Gb ~500DKK maybe and SSD/NVMe upgrade from rotating disks ~1.000DKK maybe.

## Install some virtualisation tool

Modern laptop have virtualisation, and having a virtual machine (VM) makes it much easier to run exercises. We will all have the same tools in the same places etc. I use a mix of VMware, VirtualBox, KVM, Xen and you may choose what you like the most.

Note: if we are doing Kali Linux with USB network cards you need to run virtualisation that supports it. People have a high success rate with VirtualBox for this.

It is recommended to check you BIOS settings and make sure virtualisation is enabled for the CPU etc.

If you dont have any virtualisation installed the most popular one in my trainings seem to be: https://www.virtualbox.org/

## Install virtual machines

Most of my courses require two virtual machines:
* Kali Linux - pentesting and tools for network security
* Debian Linux - used as an example generic server, web server, docker server etc.

# Detailed instructions

If you want to be even more prepared it will be great to get more familiar with Linux and Unix.

You can watch tutorials on your favourite video service, exampe Youtube, or read and work through Linux/Unix exercises on your own.

While we wont use advanced Unix command lines, it is better to know what is meant if we say "restart the sshd service".

## Kali Linux

Kali Linux is a favourite tool for me and I will use it in a lot of trainings. Best case is that everyone has downloaded and installed a VM before coming.

Download from https://www.kali.org/downloads/ - recommend the Kali Linux 64 Bit or Kali Linux Light 64 Bit. Note: light requires very little space, but needs to install tools before being useful.

Then follow the documentation from https://docs.kali.org/category/introduction Especially use the _Kali Linux Revealed – Mastering the Penetration Testing Distribution_ book from https://www.kali.org/download-kali-linux-revealed-book/

The default root password is:  toor    so enter username "root" and then password "toor".

Note: During installation please accept the default of using a network mirror.

"Configure the package manager"
Make sure the default "Use a network mirror?" is set to *Yes*

That will make it easier to install and update packages later.

**Important:**
Once a week or so I recommend to update your Kali with the following command:

```
apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade
```

Minimal resources for the VM:
2Gb memory, 1 CPU 20Gb disk. Better 4Gb ram, 2-4 CPU 30Gb disk.

A Huge thank you goes out to the developers and Offensive Security for providing such a great tool for the community!

PS If you are running on VMware then install the Open VMware Tools:
```
apt-get install -y open-vm-tools-desktop
```
on virtualbox install the "additions"
```
apt-get install -y virtualbox-guest-x11
```

## Ubuntu and Debian Linux


Ubuntu Linux and Debian Linux are my favourite Linux distributions for servers. I will use this when doing Ansible trainings or running services like Docker for trainings. I recommend starting with Ubuntu if you are new to Linux servers, because there is a very large community and lots of help.

Note: when installing a virtual machine with these operating systems, you can usually select the default settings and continue the install, since there is only a single virtual disk.

Minimal resources for the VM:
1Gb memory, 1 CPU 20Gb disk. Better 2Gb ram, 2 CPU 30Gb disk. Also some exercises can benefit from more resources.

Ubuntu can be downloaded via the Download link from:
https://www.ubuntu.com/download/server
and the installation guide from https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-server#0

Recommended version is Ubuntu 18.04.1 LTS (Bionic Beaver)

Debian can be downloaded via links from: https://www.debian.org/

Recommended version is Debian 10 amd64 64-bit which currently can be downloaded from:
https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/
choose the latest version available.



# Extras

Hello world

if you dont know Git then go to the github.com example:
https://guides.github.com/activities/hello-world/

There are other resources for setting up your own exploit pentesting labs, for example Prepare your Metasploit Lab Environment https://www.offensive-security.com/metasploit-unleashed/requirements/ from the makers of Kali Linux

## Metasploitable

I often use Metasploitable and having your own VM with Metasploitable will allow you to run Metasploit exercises completely independently.

https://www.offensive-security.com/metasploit-unleashed/requirements/

## OpenBSD

OpenBSD is my favourite infrastructure platform. I will typically bring a router with OpenBSD for providing network services like DHCPD, routing, firewalling etc. In real life I also use OpenBSD for mail servers, data center firewalls, BGP routers etc. An awesome operating system which has the best man-pages in the world!

You can read more about OpenBSD at:
https://www.openbsd.org/
