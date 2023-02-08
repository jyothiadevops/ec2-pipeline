
variable "instance_name" {
  description = "EC2 Hostname"
  default = "MyInstance"
}

variable "region" {
  description = "The AWS region to launch resources in"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "The EC2 AMI to use"
  type        = string
  default     = "ami-0123456789abcdefg"
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "availability_zone" {
  description = "The Availability Zone to launch resources in"
  type        = string
  default     = "us-east-1a"
}

variable "security_groups" {
  description = "The list of security group IDs"
  type        = list(string)
  default     = ["sg-0123456789abcdefg"]
}

variable "subnet_id" {
  description = "The Subnet ID to launch resources in"
  type        = string
  default     = "subnet-0123456789abcdefg"
}
