#!/bin/bash

set -e

cd /home/ubuntu/gitrepo/Poly-CI-Automation-Framework

/usr/bin/git pull origin main

/usr/bin/pip3 install -r requirements.txt --break-system-packages

sudo systemctl restart app