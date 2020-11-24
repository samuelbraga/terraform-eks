locals {
  rds_name = "${var.context}-${var.environment}"
}

module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "~> 2.0"

  identifier = local.rds_name

  engine            = var.rds_engine
  engine_version    = var.rds_engine_version
  instance_class    = "db.t2.medium"
  allocated_storage = 5

  name     = var.rds_database_name
  username = var.rds_username
  password = var.rds_password
  port     = var.rds_port

  vpc_security_group_ids = module.vpc.private_subnets

  subnet_ids = module.vpc.private_subnets

  deletion_protection = true

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"
}