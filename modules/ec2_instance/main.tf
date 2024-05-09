# root/modules/ec2_instance/maint.tf
resource "aws_instance" "app_server" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    vpc_security_group_ids = [var.security_group_id]
    key_name = var.key_name
    associate_public_ip_address = true
    iam_instance_profile    = var.iam_instance_profile
    tags = {
        Name = var.server_name
    }
    
    user_data = var.user_data_path != null ? file(var.user_data_path) : null
    
}