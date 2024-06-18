locals {
  jfrog_token = get_env("JFROG_TOKEN", "default-value-if-not-set")
}


# variable "jfrog_token" {
#   type        = string
#   description = "Token for accessing JFrog Artifactory"
# }


# terraform {
#     backend "remote" {
#         hostname = "gurpreet1.jfrog.io"
#         organization = "tfstate"
#         token = var.jfrog_token
#         workspaces {
#           name = "dev"
#             # prefix = "my-prefix-"
#         }
#     }
# }
terraform {
  backend "remote" {
      workspaces {
        name = "dev1"
            # prefix = "my-prefix-"
        }
  } 
  }

resource "aws_s3_bucket" "example_bucket" {
  bucket = "edemotcchd12" # Change to your desired bucket name

}