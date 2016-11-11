# the aws region to deploy in
variable "aws_region" {
  default = "us-east-1"
}

# list of AZ's to deploy to
variable "region_azs" {
  default = "a,b,c"
}

variable "network" {}

variable "vpc_id" {}

# the subnets to launch the master instances into
variable "private_subnets" {}

# the name of the environment
variable "env_name" {}

# the ami to use (this should be a coreos ami)
variable "coreos_ami" {
  default = "ami-81735696"
}

# the instance sized to be used
variable "instance_type" {
  default = "m3.xlarge"
}

# the name of the IAM ssh key used
variable "key_name" {
  description = "the name of the IAM ssh key used"
  default = "dcos_key"
}

# the default security group name (contains common settings for all instances)
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


# the base number of instances (for master ASGs, this must agree with max and min)
variable "desired_capacity" {
  default = 3
}

# the path to  a cloud config, if not defined, uses the default template. See the default template for
# details and use that as a source for customizations
variable "cloud_config_template" {
  default = ""
}

# the url to the DCOS package to download
variable "dcos_install_url" {}

# the work bucket for temporary objects 
variable "work_bucket" {}

# the work prefix to use for temporary work 
variable "work_prefix" {
  default = "work"
}

variable "http_instance_port" {
  default     = "8480"
  description = "from port 80 on the LB, which backend port to hit" 
}

variable "https_instance_port" {
  default     = "8443"
  description = "from port 443 on the LB, which backend port to hit" 
}


