variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_path"   {}
variable "aws_key_name" {}
variable "name" {}

variable "aws_region" {
  description = "EC2 Region for the VPC"
  default = "us-east-1"
}

variable "amis" {
  description = "AMIs by region"
  default = {
    us-east-1 = "ami-81735696"
  }
}

variable "region_azs" {
  description = "A list of Availability zones in the region"
  default     = []
}

variable "vpc_cidr" {
  description = "CIDR for dcos"
  default = "10.0.0.0/16"
}

variable "enable_dns_hostname" {
  description = "this is to allow hostname resolution if we care about dns"
  default     = false
}

variable "enable_dns_support" {
  description = "this is to allow hostname resolution if we care about dns"
  default     = true
}

//variable "private_subnet_cidr" {
//  description = "DCOS CIDR for the Private Subnet"
//  default = "10.0.0.0/22"
//}

//variable "public_subnet_cidr" {
//  description = "DCOS CIDR for the Public Subnet"
//  default = "10.0.4.0/22"
//}


