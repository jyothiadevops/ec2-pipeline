
variable "hostname" {
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

variable "ec2_instance_count" {
  description = "No of instances required"
  type        = string
  default     = "2"
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
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
variable "key_name" {
  description = "Key to login to the server"
  type        = string
  default     = "shared.nonprod.pem"
}

// Tag details

variable "SCTaskNo" {
  description = "Service Now ticket Number"
  type        = string
  default     = "SCTASK0573291"
}
variable "Owner" {
  description = "Owner of this server or team"
  type        = string
  default     = "GCS"
}
variable "support_group" {
  description = "Who will support this server operations"
  type        = string
  default     = "support@cloudreach.com"
}
variable "Application" {
  description = "Application running on this server"
  type        = string
  default     = "LRS/Custom"
}
variable "BU" {
  description = "Bussiness Unit or Billing details"
  type        = string
  default     = "Custom"
}
variable "Maintinance_Window" {
  description = "MW for patching or any downtime related activites"
  type        = string
  default     = "3rd Sunday of everymonth 10AM to 11AM"
}
variable "Environment" {
  description = "Environment Details"
  type        = string
  default     = "Non-Prod"
}
variable "Automation" {
  description = "Used for Automatic start/stop, Backup etc"
  type        = string
  default     = "yes"
}
variable "Backup" {
  description = "Backup Window or policy "
  type        = string
  default     = "Non-prod-policy"
}
