prefix              =       "terraform-eks-xxxxxxx"
region              =       "ap-northeast-2"
vpc_cidr            =       "10.10.0.0/16"

public_subnets      =       [
    {cidr = "10.10.0.0/24", availability_zone = "ap-northeast-2a"},
    {cidr = "10.10.1.0/24", availability_zone = "ap-northeast-2b"},
    {cidr = "10.10.2.0/24", availability_zone = "ap-northeast-2c"},
    ]

private_subnets = [
    {cidr = "10.10.3.0/24", availability_zone = "ap-northeast-2a"},
    {cidr = "10.10.4.0/24", availability_zone = "ap-northeast-2b"},
    {cidr = "10.10.5.0/24", availability_zone = "ap-northeast-2c"},
    ]

instance_type       =   "t3.micro"
keypair_name        =   "xxxxxxxxx-keypair"
ami_id              =   "ami-xxxxxxxxxxx"

