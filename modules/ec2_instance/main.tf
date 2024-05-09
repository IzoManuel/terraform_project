# root/modules/ec2_instance/maint.tf
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
    region = var.aws_region
}

resource "aws_instace" "dg-israel-ibrahim-ansible-host" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    tags = {
        Name = var.server_name
    }
}