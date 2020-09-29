variable "aws_region" {
  default = "us-west-2"
}

variable "aws_profile" {
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
