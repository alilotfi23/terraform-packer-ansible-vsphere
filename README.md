# Terraform module for vsphere/versioning  with semantic release bot

![pic](https://github.com/alilotfi23/terraform-packer-ansible-vsphere/assets/91953142/8ca60185-8d46-41d9-b829-9825b2a6ee0b)

## This project will create identical images for vsphere and deploy vm on vsphere with terraform-module provisioning by Ansible

## packer-vsphere-iso

Build a basic Ubuntu VM from an iso image with packer hashicorp


Install builder 

```shell
packer init .
```

make sure your configuration is syntactically valid by using the packer validate command.

```shell
packer validate .
```

Build the image with the packer build command. 

```shell
packer build .
```
## terraform-vsphere-module

Install provider

```shell
terraform init
```
The terraform plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure

```shell
terraform plan
```
The terraform apply command is used to apply the changes required to reach the desired state of the configuration
```shell
terraform apply
```
