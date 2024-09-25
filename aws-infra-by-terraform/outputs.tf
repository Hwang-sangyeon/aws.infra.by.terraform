output "vpc_id" {
    description     =   "The ID of VPC"
    value           =   module.vpc.this_vpc_id
}

output "vpc_cidr_block" {
    description     =   "The CIDR IP Range Block of VPC"
    value           =   module.vpc.this_vpc_cidr_block
}

output "public_subnet_ids" {
    description     =   "The List of Public Subnet ID of VPC"
    value           =   module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
    description     =   "The List of Private Subnet ID of VPC"
    value           =   module.vpc.private_subnet_ids
}

output "eks_lenasupport_security_group_id" {
    description     =   "The ID of Security Group for eks-lenasupport"
    value           =   module.vpc.eks_lenasupport_security_group_id
}

output "eks_cluster_addon_security_group_id" {
    description     =   "The ID of Security Group for eks-cluster-addon"
    value           =   module.vpc.eks_cluster_addon_security_group_id
}

output "eks_nodegroup_security_group_id" {
    description     =   "The ID of Security Group for eks-nodegroup"
    value           =   module.vpc.eks_nodegroup_security_group_id
}

output "bastion_instances_id" {
    description     =   "The list of EC2 Instance ID as bastion server"
    value           =   module.ec2.bastion_instances_id
}

output "bastion_instances_public_ip" {
    description     =   "The list of public IP address of EC2 Instance ID as bastion server"
    value           =   module.ec2.bastion_instances_public_ip
}
