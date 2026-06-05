#!/bin/bash

set -e

echo "Deploying application..."

sudo systemctl restart app
 
echo "Deployment successful!"