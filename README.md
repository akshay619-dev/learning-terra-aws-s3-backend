# Terraform Automation with AWS S3 Backend

This repository contains Terraform code where all the states management files will store in AWS S3 bucket instead of local machine.   

## Overview

Terraform is an Infrastructure as Code (IaC) tool that allows us to define and provision infrastructure using a simple and declarative configuration language. In this project, we use Terraform to automate the deployment and management of cloud resources.

## Getting Started

Before you begin, make sure you have Terraform installed on your local machine. You can download it from the [official Terraform website](https://www.terraform.io/downloads.html).

### Configure the AWS CLI

Install the AWS CLI version 2 

[https://learn.hashicorp.com/terraform/getting-started/build]

[https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html]

Once that is done, open a new cmd prompt and run
 ```shell
    # Configure AWS Credentials in command line
    $ aws configure
    AWS Access Key ID [None]: XXXXXXXXX
    AWS Secret Access Key [None]: XXXXXXXXXXXXXXXXX
    Default region name [None]: XXXXXXXXXX
    Default output format [None]: 
```

```shell
   # Verfiy aws cli version 
   $ aws --version
```

```shell
     # Verify if we are able list S3 buckets
    $ aws s3 ls
```   

-----
Do not use the root user of your account for this action. Use an IAM user that has just enough permissions to do what you need. It is a best practice.

### SETUP

1. Clone this repository to your local machine.

   ```shell
   git clone https://github.com/akshay619-dev/learning-terra-aws-s3-backend.git
   cd learning-terra-aws-s3-backend
   ```

Initialize the Terraform working directory.

```shell
    terraform init
```

Review the Terraform configurations in the .tf files to understand the resources that will be provisioned.

Check the Terraform configuration using :  

```shell
    terraform plan
```

Apply the Terraform configuration to create the infrastructure.

```shell
    terraform apply
```
OR

```shell
    terraform apply --auto-approve
```


## Automation

This Terraform project demonstrates infrastructure automation by defining cloud resources, such as virtual machines, networks, and storage, in code. With a single command (terraform apply), you can provision and manage these resources, ensuring consistency and repeatability.

Key components of the automation:

Infrastructure as Code (IaC): The infrastructure is defined using Terraform configuration files, allowing for version control, collaboration, and documentation of infrastructure changes.

Variables and Input Parameters: The use of input variables allows for flexibility in configuration. Modify the terraform.tfvars file to customize the infrastructure parameters.

Resource Provisioning: Resources like virtual machines, databases, and networks are provisioned automatically based on the defined configurations.

State Management: Terraform maintains a state file that tracks the current state of the infrastructure. This enables Terraform to detect and apply only the necessary changes during updates.

## Clean Up
To avoid incurring unnecessary charges, you can destroy the resources created by Terraform when they are no longer needed.

```shell
  terraform destroy
```

Confirm the destruction by typing yes when prompted.

OR 

```shell
    terraform destroy --auto-approve
```


❓Questions

If you found a bug, have a question or an idea 💡, don't hesitate to create new issues.

## Contributions
If you find any issues or have suggestions for improvements, please open an issue or create a pull request.
All contributions are welcome.🙏

By Akshay Patil


## License
This project is licensed under the MIT License 
