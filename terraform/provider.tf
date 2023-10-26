terraform {
  required_version = "~> 1.6.2"

  backend "s3" {
    bucket = "ci-codebuild-terraform-20231026-tfstate"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
