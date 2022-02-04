# Create-an-AMI-with-Packer
This repository contains the procedures to provision an amazon machine image with Hashicorp Packer. [Packer.io](https://www.packer.io/)

# Prerequisites
### Install Packer
Download the official image from https://www.packer.io/downloads 
Here we are using Amazon Linux for this demo purpose. So forwarded with the download of packer binary file for amazon linux.

##### Unzip the file:
unzip packer_1.7.10_linux_amd64.zip

##### Move file to your PATHS [You can check your environment variables by this command: echo $PATH
mv packer /usr/bin/

##### Check the packer version
packer version
Packer v1.7.10

##### For best practices, create a directory for packer projects.
mkdir packer
cd packer

##### Create the template file siting the specifications of the AMI. 
vim html-site.pkr.hcl

##### Create a bash script for provisioning apache and loading a free html template.
vim staticsite.sh



