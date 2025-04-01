resource "aws_db_subnet_group" "default" {
  name       = var.subnet_group_name
  subnet_ids = var.subnet_ids
  description = "RDS Subnet Group"
}

resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = "8.0"  # Update to a supported version
  instance_class       = "db.t3.micro"  # Update to a supported instance class
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.parameter_group_name
  vpc_security_group_ids = var.security_group_ids
  db_subnet_group_name = aws_db_subnet_group.default.name
  multi_az             = false
  publicly_accessible  = false
}