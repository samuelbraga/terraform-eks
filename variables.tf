variable "aws_region" {
  default = ""
  type = string
}

variable "context" {
  default = ""
  type = string
}

variable "environment" {
  default = ""
  type = string
}

variable "vpc_cidr_block" {
  default = ""
  type = string
}

variable "public_subnets_cidr" {
  default = [""]
  type = list(string)
}

variable "private_subnets_cidr" {
  default = [""]
  type = list(string)
}

variable "cluster_version" {
  default = ""
  type = string
}

variable "map_users" {
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::66666666666:user/user1"
      username = "user1"
      groups   = ["system:masters"]
    },
  ]
}
