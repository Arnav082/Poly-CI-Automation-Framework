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
* GitHub Actions
* Jenkins automation
* Git workflows
* Python automation scripting

---
