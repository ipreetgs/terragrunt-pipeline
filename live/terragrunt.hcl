# remote_state {
#   backend = "remote"
#   config = {
#     hostname = "gurpreet1.jfrog.io"
#     organization = "tfstate"
#     token = get_env("JFROG_TOKEN")
#     # workspaces {
#     #     name = "dev"
#     #         # prefix = "my-prefix-"
#     #     }
#   }
# }
# Generite file with provider`s (vSphere) data
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region  = "us-east-1"
}

EOF
}