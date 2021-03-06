variable "aws_region" {
  type = string
  default = "eu-west-1"
}

variable "bucket_name" {
  type = string
  default = "terraform-tutorial"
}

provider "aws" {
  region  = var.aws_region
  version = "~> 2.52"
}

module "website" {
  source      = "./modules/static-site"
  bucket_name = var.bucket_name
}

module "api" {
  source      = "./modules/api"
}
