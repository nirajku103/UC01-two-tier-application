variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs for the EC2 instances"
  type        = list(string)
}

variable "security_group_ids" {
  description = "The security group IDs for the EC2 instances"
  type        = list(string)
}