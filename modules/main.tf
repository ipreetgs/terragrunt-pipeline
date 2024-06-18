terraform {
    backend "remote" {
        hostname = "gurpreet1.jfrog.io"
        organization = "tfstate"
        token = get_env("JFROG_TOKEN")
        workspaces {
          name = "dev"
            # prefix = "my-prefix-"
        }
    }
}



resource "aws_s3_bucket" "example_bucket" {
  bucket = "edemotcchd12" # Change to your desired bucket name

}