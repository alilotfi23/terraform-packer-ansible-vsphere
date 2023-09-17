# terraform-packer-ansible-vsphere
## packer-vsphere-iso

Build a basic Ubuntu VM from an iso image with packer hashicorp

## Usage

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
##terraform-vsphere]

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
