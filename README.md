# Terraform Project

This project contains Terraform configurations for deploying infrastructure on AWS.


## Description

This Terraform project is organized into different directories to manage environments (`dev`, `staging`, `prod`) and modules (`ec2_instance`, `ansible_host`). Each environment directory contains Terraform configuration files specific to that environment, while the modules directory contains reusable Terraform modules for creating resources.

## Environment Configuration

The environment configuration files (`main.tf`, `variables.tf`, `outputs.tf`, `terraform.tf`) define the resources to be provisioned in each environment. Modify these files to customize the infrastructure according to your requirements.

## Module Configuration

The module configuration files (`main.tf`, `variables.tf`, `outputs.tf`) define the parameters and resources for each module. Modify these files to adjust module behavior and resource settings.

## Usage

1. Install Terraform by following the instructions [here](https://learn.hashicorp.com/tutorials/terraform/install-cli).
2. Clone this repository to your local machine.
3. Navigate to the desired environment directory (e.g., `staging`).
4. Initialize Terraform by running `terraform init`.
5. Review and apply the Terraform changes by running `terraform apply`.
6. Confirm the changes and approve by typing `yes` when prompted.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or create a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
