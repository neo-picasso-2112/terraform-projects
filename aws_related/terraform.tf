terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }
  backend "s3" {
    bucket       = "batch3-demo-state-bucket-234234" # Make sure you created this bucket on S3 to store state file.
    key          = "terraform.tfstate"
    region       = "ap-southeast-2"
    use_lockfile = true
  }
}
