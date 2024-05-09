variable "ami" {
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

variable "iam_instance_profile" {
  type = string
  description = "The ARN of the IAM instance profile to associate with the instance."
  default = "dg-ec2-base"
}

variable "user_data_path" {
  description = "Path to the user data script"
  type = string
  default = null
}

variable "security_group_id" {
  description = "The id of the security group to associate with the instance"
  type = string
  default = "sg-099450fde8b6080bd"
}

variable "key_name" {
  description = "Key pair to be associated with the instance"
  type = string
  default = "israel-ibrahim2"
}

variable "aws_region" {
  description = "Provider region"
  type = string
  default = "ap-south-1"

}