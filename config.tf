provider "aws" {
  region = var.aws_region
}

provider "local" {
  version = "~> 1.2"
}

terraform {
  backend "s3" {}
}