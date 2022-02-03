variable "ami_id" {
  type    = string
  default = "ami-03fa4afc89e4a8a09"
}

variable "app_name" {
  default = "staticsite"
}
source "amazon-ebs" "httpd" {
  ami_name      = "PACKER-DEMO-${var.app_name}"
  instance_type = "t2.micro"
  region        = "ap-south-1"
  source_ami    = "${var.ami_id}"
  ssh_username  = "ec2-user"
  secret_key    = "ZTnQryeuGfg7zdK9iDdR2epCRbjmmHs2yhK7xxax"
  access_key    = "AKIAXIXMGW6TT2QBZQX5"
  tags = {
    Env  = "Dev"
    Name = "Packer-site-${var.app_name}"
  }
}

build {
  sources = ["source.amazon-ebs.httpd"]
  provisioner "file" {   
    source = "staticsite.sh"
    destination = "~/staticsite.sh"
  }
  provisioner "shell" {
    inline = [ "sudo bash ~/staticsite.sh" ]
  }
}
