## Overview

Poly-CI-Automation-Framework is an end-to-end DevOps project that demonstrates Infrastructure as Code (IaC), Continuous Integration (CI), and Continuous Deployment (CD) using AWS, Terraform, GitHub Actions, Jenkins, Linux, and Python App.

The project provisions infrastructure on AWS using Terraform, deploys a Python application on an EC2 instance, and automates testing and deployment through GitHub Actions and Jenkins.

---

## Tech Stack

### Cloud

* AWS EC2

### Infrastructure as Code

* Terraform

### CI/CD

* GitHub Actions
* Jenkins

### Operating System

* Ubuntu Linux

### Application

Flask 

### Version Control

* Git
* GitHub

### Scripting

* Bash
* Python

---

## Architecture

Developer
↓
GitHub Repository
↓
GitHub Actions (CI)
↓
Jenkins (CD)
↓
AWS EC2
↓
Flask Application

---

## Project Structure

```text
devops-aws-platform/
│
├── app/
|   |--templates/
|   |     |__ index.html
│   ├── __init__.py
│   └── app.py
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── instance.tf
│   ├── amiid.tf
│   ├── security.tf
│   └── bootstrap.sh
│
├── scripts/
│   └── deploy.sh
│
├── tests/
│   └── test_app.py
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── Jenkinsfile
├── requirements.txt
├── .gitignore
└── README.md
```

---

## Features

### Infrastructure Provisioning

Terraform provisions:

* EC2 Instance
* Security Group


### Automated Server Bootstrap

Using EC2 user_data:

* Python installation
* Git installation
* AWS CLI installation
* Application directory creation

### Application Deployment

Flask application deployed using:

* Python3
* Systemd service

### Continuous Integration

GitHub Actions performs:

* Source checkout
* Dependency installation
* Automated testing

### Continuous Deployment

Jenkins performs:

* Repository checkout
* Dependency installation
* Application deployment
* Service restart

---

## Deployment Workflow

1. Developer pushes code to GitHub.
2. GitHub Actions executes CI pipeline.
3. Testing are performed.
4. Jenkins pipeline is triggered by github webhooks.
5. Jenkins deploys updated code to EC2.
6. Application service restarts automatically.
7. Updated application becomes available through public ip.

---

## Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Preview changes:

```bash
terraform plan
```

Create infrastructure:

```bash
terraform apply
```

Destroy infrastructure:

```bash
terraform destroy
```

---

## Running Application Locally

Install dependencies:

```bash
pip install -r requirements.txt
```

Run application:

```bash
python3 app.py
```

Application URL:

```text
http://localhost:8000
```

---

## Jenkins Pipeline Stages

* Checkout
* Install Dependencies
* Run Tests
* Deploy

---

## GitHub Actions Pipeline Stages

* Checkout Code
* Setup Python
* Install Dependencies
* Run Tests

---

## Learning Outcomes

Through this project I gained hands-on experience with:

* Infrastructure as Code using Terraform
* AWS resource provisioning
* Linux server administration
* Flask deployment
* Systemd service management
* CI/CD pipeline implementation

  

# Poly-CI-Automation-Framework – Complete Build Process

## Goal

Build an end-to-end DevOps project that automatically:

* Provisions infrastructure using Terraform
* Deploys a Flask application on AWS EC2
* Runs automated tests using GitHub Actions
* Deploys application using Jenkins
* Hosts application as a Linux systemd service

---

# Phase 1: Build the Application

Objective: Create a simple Flask application.

Tasks:

1. Create project directory.
2. Create Flask application.
3. Create HTML template.
4. Create requirements.txt.
5. Run application locally.
6. Verify application works on localhost.

Learning:

* Flask basics
* Python package management
* Project structure

---

# Phase 2: Infrastructure as Code with Terraform

Objective: Create AWS infrastructure automatically.

Resources:

* EC2 Instance
* Security Group

Files:

* provider.tf
* variables.tf
* instance.tf
* security.tf
* amiid.tf

Tasks:

1. Configure AWS provider.
2. Create Security Group.
3. Open ports:

   * 22 (SSH)
   * 80 (HTTP)
   * 8000 (Flask)
   * 8080 (Jenkins)
4. Create EC2 instance.
5. Attach Security Group.
6. Use default VPC.
7. Run:

   * terraform init
   * terraform validate
   * terraform plan
   * terraform apply

Learning:

* Terraform workflow
* AWS resources
* Security groups
* Infrastructure as Code

---

# Phase 3: Automated Server Bootstrap

Objective: Configure server automatically during creation.

File:

* bootstrap.sh

Using user_data:

1. Update packages.
2. Install Python.
3. Install pip.
4. Install Git.
5. Install AWS CLI.
6. Create application directory.

Terraform passes bootstrap.sh through:

user_data = file("bootstrap.sh")

Result:

Every new EC2 instance becomes ready automatically.

Learning:

* EC2 user_data
* Bash scripting
* Server initialization

---

# Phase 4: Deploy Flask Application

Objective: Run application permanently.

Tasks:

1. Copy application to server.
2. Install requirements.
3. Create systemd service.
4. Enable service.
5. Start service.

Useful commands:

systemctl start app
systemctl stop app
systemctl restart app
systemctl status app

Result:

Application survives logout and server reboot.

Learning:

* Linux services
* Process management
* Systemd

---

# Phase 5: Continuous Integration with GitHub Actions

Objective: Run tests automatically.

Workflow:

Developer Push
↓
GitHub Actions
↓
Install Dependencies
↓
Run Tests

File:

.github/workflows/ci.yml

Tasks:

1. Checkout code.
2. Setup Python.
3. Install requirements.
4. Run pytest.

Learning:

* CI concepts
* GitHub Actions workflow
* Automated testing

---

# Phase 6: Jenkins Setup

Objective: Create deployment server.

Tasks:

1. Install Java.
2. Install Jenkins.
3. Start Jenkins service.
4. Unlock Jenkins.
5. Install suggested plugins.
6. Create pipeline project.

Learning:

* Jenkins administration
* Build pipelines
* CI/CD tools

---

# Phase 7: Jenkins Pipeline

Objective: Deploy automatically.

Stages:

1. Checkout
2. Install Dependencies
3. Run Tests
4. Deploy

Jenkinsfile contains all stages.

Learning:

* Pipeline as Code
* Automated deployment
* Build stages

---

# Phase 8: GitHub Webhook Integration

Objective: Trigger Jenkins automatically.

Workflow:

Developer Push
↓
GitHub
↓
Webhook
↓
Jenkins
↓
Pipeline Starts

Tasks:

1. Configure webhook.
2. Configure Jenkins trigger.
3. Test webhook.

Learning:

* Event-driven automation
* Webhooks
* CI/CD integration

---

# Phase 9: Deployment Automation

Objective: Update application automatically.

deploy.sh performs:

1. Pull latest code.
2. Install dependencies.
3. Restart service.

Workflow:

GitHub Push
↓
GitHub Actions Testing
↓
Webhook
↓
Jenkins
↓
deploy.sh
↓
systemctl restart app
↓
Updated Application Live

Learning:

* Release automation
* Zero manual deployment

---

# Final Architecture

Developer
↓
GitHub Repository
↓
GitHub Actions (CI)
↓
Jenkins (CD)
↓
AWS EC2
↓
Systemd Service
↓
Flask Application

---

# Key Concepts Learned

1. AWS EC2
2. Security Groups
3. Terraform
4. Infrastructure as Code
5. Bash Scripting
6. Linux Administration
7. Python Flask
8. Systemd
9. Git
10. GitHub
11. GitHub Actions
12. Jenkins
13. Webhooks
14. CI/CD Pipelines
15. Automated Deployment

---

# Future Improvements

1. Docker
2. Nginx Reverse Proxy
3. HTTPS/SSL
4. Prometheus
5. Grafana
6. Terraform Remote State
7. Kubernetes
8. GitOps

* GitHub Actions
* Jenkins automation
* Git workflows
* Python automation scripting

---
