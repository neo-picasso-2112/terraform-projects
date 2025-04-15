terraform {
  # The version attribute is optional, but we recommend using it to constrain the provider version so that Terraform does not
  # install a version of the provider that does not work with your configuration. If you do not specify a provider version, 
  # Terraform will automatically download the most recent version during initialization.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# The provider block configures the specified provider, in this case aws. A provider is a plugin that Terraform uses to create and manage your resources.
# You can use multiple provider blocks in your Terraform configuration to manage resources from different providers. You can even use different providers together. 
# For example, you could pass the IP address of your AWS EC2 instance to a monitoring resource from DataDog.
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

