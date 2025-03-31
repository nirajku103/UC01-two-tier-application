
vpc_cidr = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones = ["us-east-1a", "us-east-1b"]

sg_name = "web-sg"
sg_description = "Security group for web servers"
sg_ingress_from_port = 80
sg_ingress_to_port = 80
sg_ingress_protocol = "tcp"
sg_ingress_cidr_blocks = ["0.0.0.0/0"]

rds_sg_name = "rds-sg"
rds_sg_description = "Security group for RDS"
rds_sg_ingress_from_port = 3306
rds_sg_ingress_to_port = 3306
rds_sg_ingress_protocol = "tcp"
rds_sg_ingress_cidr_blocks = ["0.0.0.0/0"]

ec2_ami_id = "ami-08b5b3a93ed654d19"  # Ensure this AMI ID is valid
ec2_instance_type = "t2.micro"

rds_allocated_storage = 20
rds_engine = "mysql"
rds_instance_class = "db.t3.micro"
rds_db_name = "mydb"
rds_username = "admin"
rds_password = "password"
rds_parameter_group_name = "default.mysql8.0"
rds_subnet_group_name = "mydb-subnet-group"

alb_name = "my-alb"
alb_port = 80

asg_name = "my-asg"
desired_capacity = 2
min_size = 2
max_size = 2
