#!/bin/bash

set -e

apt-get update -y

apt-get install -y \
    python3 \
    python3-pip \
    python3-flask \
    git \
    nginx \
    unzip \
    curl

# Install AWS CLI

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" \
-o "awscliv2.zip"

unzip awscliv2.zip

./aws/install

# Create project directory

mkdir -p /home/ubuntu/app

# Start nginx

systemctl enable nginx
systemctl start nginx

echo "Bootstrap completed" > /tmp/bootstrap.log