# Azure Backup & Disaster Recovery using Terraform

## Project Overview

This project demonstrates how to deploy a secure Azure Virtual Machine and protect it using Azure Backup through a Recovery Services Vault. The infrastructure is provisioned using Terraform and follows Infrastructure as Code (IaC) best practices.

The project showcases how organizations can implement backup and disaster recovery solutions to protect virtual machines from accidental deletion, corruption, ransomware attacks, or hardware failures.

---

## Architecture

The solution consists of:

* Azure Resource Group
* Virtual Network
* Subnet
* Network Security Group (NSG)
* Windows Server Virtual Machine
* Public IP Address
* Recovery Services Vault
* Daily Backup Policy
* Azure VM Backup
* Recovery Points

---

## Technologies Used

* Microsoft Azure
* Terraform
* Azure Recovery Services Vault
* Windows Server 2022
* Azure Virtual Network
* Azure Backup

---

## Project Structure

```text
azure-backup-disaster-recovery/
│
├── provider.tf
├── variables.tf
├── networking.tf
├── compute.tf
├── backup.tf
├── outputs.tf
├── terraform.tfvars.example
├── README.md
├── architecture.png
└── screenshots/
```

## Features

* Infrastructure as Code using Terraform
* Secure Azure Virtual Network
* Windows Server Virtual Machine
* Network Security Group with RDP and HTTP rules
* Azure Recovery Services Vault
* Daily automated VM backups
* 30-day backup retention policy
* Recovery point creation
* VM restore capability

---

## Business Use Case

This project demonstrates how organizations can implement Azure Backup to protect production virtual machines from data loss and enable quick recovery during disaster scenarios.

---

## Future Enhancements

* Azure Monitor alerts
* Backup reporting
* Recovery testing automation
* Azure Key Vault integration
* Azure Site Recovery (ASR)
  
---

## Infrastructure as Code

The infrastructure in this repository has been recreated using Terraform to demonstrate Infrastructure as Code (IaC) best practices. The resources were initially provisioned and validated manually in the Azure Portal before being translated into Terraform configuration.
