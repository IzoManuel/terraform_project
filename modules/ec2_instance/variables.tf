# root/modules/ec2_instance/variables.tf
variable "ami_id" {
  description = "Ami ID to deploy"
  type = string
  default = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  description = "Instance size for the aws instance"
  type = string
  default = "t2.micro"
}

variable "subnet_id" {
    description = "ID of the subnet"
    type = string
    default = "subnet-0e0f8c1f4debaac66"
}

variable "server_name" {
    description = "Name tag for the AWS instance"
    type = string
    default = "dg-israel-ibrahim-terraform-test"
}

variable "aws_region" {
  description = "Provider region"
  type = string
  default = "ap-south-1"
}