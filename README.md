# kramse-labs
Guide to preparing your laptop for training with Kramse

Hey we are doing a training, cool!
I do a lot of training sessions, and I would like for you to enjoy them too.
So please take a few minutes to read this small guide, and prepare your systems.

BTW If you did not read these, forgot to do this - everything will be fine. You may be able to join a group or just lean back and listen.

**Beware** though that if the rest of the group DID do this it would be unfair for me to spend a lot of time walking you through these steps. So I will give you a link to this guide and ask you to follow these instructions.

# Mandatory

**You MUST do this.**

## Bring a laptop

Bring your laptop in good working order. Have updates installed, make sure it can survive the power being interrupted if power cables need re-arranging.

Always use a firewall on your laptop, both for trainings and in general.

## Install some virtualisation tool

Modern laptop have virtualisation, and having a virtual machine (VM) makes it much easier to run exercises. We will all have the same tools in the same places etc.

I use a mix of VMware, KVM, Xen and you may choose what you like the most.

Note: if we are doing Kali Linux with USB network cards you need to run virtualisation that supports it. People have a high success rate with VirtualBox for this.



# Recommended

If you want to be even more prepared it will be great to get more familiar with Linux and Unix.

You can watch tutorials on your favourite video service, exampe Youtube, or read and work through Linux/Unix exercises on your own.

While we wont use advanced Unix command lines, it is better to know what is meant if we say "restart the sshd service".

## Kali Linux

Kali Linux is a favourite tool for me and I will use it in a lot of trainings. Best case is that everyone has downloaded and installed a VM before coming.

Update your Kali with the following command:

```
apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade
```

Minimal resources for the VM:
2Gb memory, 1 CPU 20Gb disk. Better 4Gb ram, 2-4 CPU 30Gb disk.


## Ubuntu and Debian Linux

Ubuntu Linux and Debian Linux are my favourite Linux distributions for servers.

# Extras
