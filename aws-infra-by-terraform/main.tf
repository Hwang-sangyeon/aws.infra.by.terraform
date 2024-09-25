module "vpc" {
    source              =   "./modules/vpc"

    prefix              =   var.prefix
    vpc_cidr            =   var.vpc_cidr
    
    public_subnets      =   var.public_subnets
    private_subnets     =   var.private_subnets
}

module "ec2" {
    source              =   "./modules/ec2"
    
    prefix              =   var.prefix
    subnet_ids          =   module.vpc.public_subnet_ids
    keypair_name        =   var.keypair_name
    instance_type       =   var.instance_type
    ami_id              =   var.ami_id
    security_groups     =   [module.vpc.eks_lenasupport_security_group_id]
}

