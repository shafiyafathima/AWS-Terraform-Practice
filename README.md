# AWS-Terraform-Practice

# Project Overview
This repository contains my hands-on practice with Terraform and AWS.

The purpose of this project is to provision and manage AWS infrastructure using Infrastructure as Code (IaC) with Terraform instead of creating resources manually through the AWS Portal.

This project demonstrates Terraform fundamentals including resource creation, variables, outputs, networking, security, virtual machines, storage, databases, and load balancing.

# 🛠️ Technologies Used
AWS
Terraform
AWS CLI
Git
GitHub
Visual Studio Code

# ☁️ AWS Resources
The following AWS resources are included in this practice repository:

## AWS Resources

| **#** | **AWS Resource**                       | **Description**                                      |
| ----- | -------------------------------------- | ---------------------------------------------------- |
| 1     | **AWS EC2 Instance with Public IP**    | EC2 instance configured with a public IP address     |
| 2     | **AWS EC2 Instance without Public IP** | EC2 instance deployed without a public IP address    |
| 3     | **AWS VPC**                            | VPC, subnets, and route tables configuration         |
| 4     | **AWS S3 Bucket**                      | S3 bucket provisioned using Terraform                |
| 5     | **AWS Security Group**                 | Network security rules for controlling traffic       |
| 6     | **AWS Load Balancer**                  | Distributes network traffic across backend resources |
| 7     | **AWS RDS**                            | RDS infrastructure provisioned using Terraform       |

# 📂 Repository Structure
AWS-Terraform-Practice/
│
├── AWS-Instance-With-Public-IP/
│   ├── .terraform.lock.hcl
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
│
├── AWS-Instance-Without-Public-IP/
│   ├── .terraform.lock.hcl
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
│
├── AWS-VPC/
│   ├── .terraform.lock.hcl
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
│
├── AWS-S3/
│   ├── .terraform.lock.hcl
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
│
├── AWS-Security-Group/
│   ├── .terraform.lock.hcl
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
│
├── AWS-Load-Balancer/
│   ├── .terraform.lock.hcl
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
│
├── AWS-RDS/
│   ├── .terraform.lock.hcl
│   ├── main.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
│
└── .gitignore


# 📄 Terraform File Description

# main.tf
Contains the Terraform resource configuration used to create AWS infrastructure.

# provider.tf
Contains the Terraform provider configuration.

The AWS provider is used to allow Terraform to communicate with Amazon Web Services (AWS) and manage AWS resources.

# variables.tf
Defines the input variables used by the Terraform configuration.

# terraform.tfvars
Contains the actual values assigned to the Terraform variables.

The values used in this practice repository are dummy/practice values for learning and demonstration purposes.

# output.tf
Defines the output values that Terraform displays after resources are created, such as resource IDs, IP addresses, names, or other useful information.

# .terraform.lock.hcl
Locks the selected Terraform provider versions and their dependency checksums.

This file is normally committed to the Git repository so that Terraform uses consistent provider versions across environments.

# .gitignore
Prevents Terraform-generated files and state files from being committed to GitHub.

Examples:

.terraform/
*.tfstate
*.tfstate.*
*.tfplan
*.plan
crash.log
crash.*.log


# 🔄 Terraform Workflow
The general Terraform workflow used in this project is:

Write Terraform Configuration
          ↓
terraform init
          ↓
terraform fmt
          ↓
terraform validate
          ↓
terraform plan
          ↓
terraform apply
          ↓
AWS Resources Created

# Common Terraform Commands

Initialize the Terraform working directory:

terraform init

Format Terraform configuration files:

terraform fmt

Validate the Terraform configuration:

terraform validate

Create an execution plan:

terraform plan

Create the AWS resources:

terraform apply

Destroy practice resources when they are no longer required:

terraform destroy

# 🧩 Terraform Concepts Practiced
This repository demonstrates hands-on practice with:

- Infrastructure as Code (IaC)
- Terraform Provider
- Terraform Resources
- Terraform Variables
- Terraform `terraform.tfvars`
- Terraform Outputs
- Resource Dependencies
- AWS EC2 Instances
- AWS VPCs
- AWS Subnets
- Public and Private Networking
- AWS Security Groups
- AWS S3 Buckets
- AWS Elastic Load Balancer
- Amazon RDS
- Terraform Modules
- Git
- GitHub
- AWS CLI

# 🔐 State File and Security
Terraform state files can contain important information about infrastructure and should not normally be committed to a public repository.

Therefore, this repository ignores:

.terraform/
*.tfstate
*.tfstate.*
*.tfplan
*.plan
crash.log
crash.*.log

The .terraform.lock.hcl file is not ignored and is committed to the repository.

The terraform.tfvars files in this practice repository contain dummy values for learning and demonstration purposes.

Important: Real production credentials, passwords, access keys, secrets, or client-sensitive information should never be stored in a public GitHub repository.

# 🎯 Project Objective
The main objective of this project is to build practical knowledge of Terraform + AWS Infrastructure as Code.

This project helps demonstrate how AWS infrastructure can be:

Defined using Terraform
Provisioned automatically
Configured using variables
Validated and planned before deployment
Managed using Infrastructure as Code
Version-controlled using Git and GitHub


# 🚀 Future Enhancements
Planned improvements include:

Reusable Terraform modules
Multiple AWS Instances
Instance with different operating systems
Instance deployed in different AWS regions
Remote Terraform backend using AWS Storage
Terraform with GitHub
Jenkins CI/CD integration
Automated Terraform plan and apply pipelines
Infrastructure deployment through CI/CD

# 📚 Learning Outcome
Through this project, I am developing practical experience in:

AWS
  ↓
Terraform
  ↓
Infrastructure as Code
  ↓
Git
  ↓
GitHub
  ↓
CI/CD

This repository represents my hands-on practice and continuous learning in AWS Cloud, Terraform, Infrastructure as Code, and DevOps.




