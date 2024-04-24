terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

variable "region" {
  type        = string
  default     = "eu-west-2"
  description = "The AWS region to connect and run the tests in."
}

provider "aws" {
  region = var.region
}
