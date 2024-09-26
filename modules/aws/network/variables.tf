variable "aws_region" {
  type        = string
  description = "AWS region where resources will be configured"
  default     = "us-east-2"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  type        = string
  description = "Name to assign to VPC"
}

variable "vpc_enable_dns_support" {
  type        = bool
  description = "Enables DNS support for the VPC"
  default     = true
}

variable "vpc_enable_dns_hostnames" {
  type        = bool
  description = "Enables DNS hostnames for the VPC"
  default     = true
}