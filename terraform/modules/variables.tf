variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "The availability zones for the subnets"
  type        = list(string)
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "sg_description" {
  description = "The description of the security group"
  type        = string
}

variable "sg_ingress_from_port" {
  description = "The ingress from port"
  type        = number
}

variable "sg_ingress_to_port" {
  description = "The ingress to port"
  type        = number
}

variable "sg_ingress_protocol" {
  description = "The ingress protocol"
  type        = string
}

variable "sg_ingress_cidr_blocks" {
  description = "The ingress CIDR blocks"
  type        = list(string)
}

variable "rds_sg_name" {
  description = "The name of the RDS security group"
  type        = string
}

variable "rds_sg_description" {
  description = "The description of the RDS security group"
  type        = string
}

variable "rds_sg_ingress_from_port" {
  description = "The ingress from port for the RDS security group"
  type        = number
}

variable "rds_sg_ingress_to_port" {
  description = "The ingress to port for the RDS security group"
  type        = number
}

variable "rds_sg_ingress_protocol" {
  description = "The ingress protocol for the RDS security group"
  type        = string
}

variable "rds_sg_ingress_cidr_blocks" {
  description = "The ingress CIDR blocks for the RDS security group"
  type        = list(string)
}

variable "ec2_ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}

variable "ec2_instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
}

variable "rds_allocated_storage" {
  description = "The allocated storage for the RDS instance"
  type        = number
}

variable "rds_engine" {
  description = "The database engine for the RDS instance"
  type        = string
}

variable "rds_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "rds_db_name" {
  description = "The name of the database"
  type        = string
}

variable "rds_username" {
  description = "The username for the database"
  type        = string
}

variable "rds_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "rds_parameter_group_name" {
  description = "The parameter group name for the RDS instance"
  type        = string
}

variable "rds_subnet_group_name" {
  description = "The subnet group name for the RDS instance"
  type        = string
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
}

variable "alb_port" {
  description = "The port for the ALB"
  type        = number
}

variable "asg_name" {
  description = "The name of the ASG"
  type        = string
}

variable "desired_capacity" {
  description = "The desired capacity for the ASG"
  type        = number
}

variable "min_size" {
  description = "The minimum size for the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum size for the ASG"
  type        = number
}