resource "aws_eip" "bastion_eip" {
  instance                          =   aws_instance.bastion.id
  domain                            =   "vpc"
  tags = {
      Name                          =   "${var.prefix}-bastion-eip"   
  }
}

resource "random_integer" "random_subnet_index" {
  min = 0
  max = length(var.subnet_ids) - 1
}

resource "aws_instance" "bastion" {
    associate_public_ip_address     =   true
    ami                             =   var.ami_id
    subnet_id                       =   var.subnet_ids[random_integer.random_subnet_index.result]
    instance_type                   =   var.instance_type
    key_name                        =   var.keypair_name
    vpc_security_group_ids          =   var.security_groups

    tags = {
        Name                        =   "${var.prefix}-bastion"
        Managed_by                  =   "terraform"
    }
}
