aws_region  = ""

context     = ""
environment = ""

vpc_cidr_block       = ""
public_subnets_cidr  = [""]
private_subnets_cidr = [""]

cluster_version = ""
map_users       = [
  {
    userarn  = "arn:aws:iam::66666666666:user/user1"
    username = "user1"
    groups   = ["system:masters"]
  }
]

rds_engine               = ""
rds_engine_version       = ""
rds_major_engine_version = ""
rds_database_name        = ""
rds_username             = ""
rds_password             = ""
rds_port                 = ""
rds_family               = ""
