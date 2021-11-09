# Workstation tools

This directory is for a few nice utilities, like Atom editor.


## Ansible quick-start

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
```
cd kramse-labs/suricatazeek
ansible-playbook -v 1-dependencies.yml
```

Note: I keep these playbooks flat and simple, but you should investigate Ansible roles for real deployments.

If I update these, it might be necessary to update your copy of the playbooks.
Run this while you are in the cloned repository:
```
git pull
```



Note: usually I would recommend running git clone as your personal user, and then use sudo command to run some commands as root. In a training environment it is OK if you want to run everything as root. Just beware.
