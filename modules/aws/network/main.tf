terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      managed_by = "terraform"
    }
  }
}

resource "aws_vpc" "net_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = var.vpc_enable_dns_support
  enable_dns_hostnames = var.vpc_enable_dns_hostnames

  tags = {
    Name = "${var.vpc_name}"
  }
}