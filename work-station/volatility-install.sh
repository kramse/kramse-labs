#! /bin/#!/bin/sh

# Quick and dirty install Volatility framework
# Inspired by:
# https://seanthegeek.net/1172/how-to-install-volatility-2-and-volatility-3-on-debian-ubuntu-or-kali-linux/


sudo apt install -y python3 python3-dev libpython3-dev python3-pip python3-setuptools python3-wheel
sudo python3 -m pip install -U distorm3 yara pycrypto pillow openpyxl ujson pytz ipython capstone
sudo python3 -m pip install -U git+https://github.com/volatilityfoundation/volatility3.git


echo 'export PATH=/home/username/.local/bin:$PATH' >> ~/.bashrc
