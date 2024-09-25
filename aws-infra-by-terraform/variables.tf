variable "prefix" {}
variable "region" {}
variable "vpc_cidr" {}

variable "public_subnets" {
    type = list(object({
        cidr                =   string
        availability_zone   =   string
    }))
}

variable "private_subnets" {
    type = list(object({
        cidr                =   string
        availability_zone   =   string
    }))
}

variable "instance_type" {}
variable "keypair_name" {}
variable "ami_id" {}
