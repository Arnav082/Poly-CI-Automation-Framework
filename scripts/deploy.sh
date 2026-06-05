#!/bin/bash

set -e

echo "Deploying application..."

sudo systemctl restart devops-app

echo "Deployment successful!"