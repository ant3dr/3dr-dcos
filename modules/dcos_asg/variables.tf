variable "aws_region" {
  default = "us-east-1"
}

variable "region_azs" {
  default = "a,b,c"
  description = "comma separated list of AZ's to deploy into"
}

variable "vpc_id" {
  description = "the vpc to launch the ASG in"
}

variable "subnets" {
  description = "The subnets to launch into, comma separated, must be the same number of elements as region_azs"
}

variable "env_name" {
  description = "The name of the environment dev, staging,  etc, used as prefix in creating ASG name"
  default = "dev"
}

variable "name" {
  description = "the name of the ASG, should be unique across asgs"
}

variable "coreos_ami" {
  default = "ami-81735696"
  description = "The ami we are using currently is a coreos AMI"
}

variable "instance_type" {
  default = "m3.xlarge"
}

variable "role_arn" {
  description = "the role instance profile that will be used for launching these instances"
  default = []
}

variable "key_name" {
  description = "the name of the IAM ssh key used"
  default = "dcos_key"
}


variable "default_security_group" {}

# any extra security groups to be applied, comma separated
variable "extra_security_groups" {}

# the size of the root volume
variable "root_volume_size" {
  default = 8
}

# the max number of instances (for master ASGs, this must agree with min and desired)
variable "max_size" {
  default = 3
}


# the min number of instances (for master ASGs, this must agree with max and desired)
variable "min_size" {
  default = 3
}

variable "desired_capacity" {
  default = 3
}
