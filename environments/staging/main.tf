# root/environment/staging/maint.tf
terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
      }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "ap-south-1"
}


module "ansible_host_server" {
    source = "../../modules/ec2_instance"
    user_data_path = "../../userdata/userdata_ansible_host.sh"
    server_name = "dg-israel-ibrahim-terraform-ansible-host"
}


module "ansible_guest_server" {
    source = "../../modules/ec2_instance"
    user_data_path = "../../userdata/userdata_ansible_guest.sh"
    server_name = "dg-israel-ibrahim-terraform-ansible-guest"
}