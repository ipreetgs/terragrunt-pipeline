variable "region" {
default = "us-east-1"
}

variable "instance_count_needed" {
  default = "false"
}

variable "instance_count" {
  default = 1
}

# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.54"
#     }
#   }

#   required_version = ">= 0.14.9"
# }

# provider "aws" {
#   profile = "default"
#   region  = var.region
# }

resource "aws_instance" "app_server" {
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  count = var.instance_count_needed ? var.instance_count : 1
  tags = {
    Name = "ExampleAppServer"
  }
}

# terraform {  
#   backend "s3" {

#   }  
# }

output "instance_id" {
  description = "ID of the EC2 instance(s)"
  value       = aws_instance.app_server.*.id
}

output "instance_state" {
  description = "State of the EC2 instance(s)"
  value       = aws_instance.app_server.*.instance_state
}
