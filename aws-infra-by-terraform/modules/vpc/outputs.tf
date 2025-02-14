output "this_vpc_id" {
    description     =   "The ID of VPC"
    value           =   aws_vpc.this.id
}

output "this_vpc_cidr_block" {
    description     =   "The CIDR IP Range Block of VPC"
    value           =   aws_vpc.this.cidr_block
}

output "public_subnet_ids" {
    description     =   "The List of Public Subnet ID of VPC"
    value           =   aws_subnet.public.*.id
}

output "private_subnet_ids" {
    description     =   "The List of Private Subnet ID of VPC"
    value           =   aws_subnet.private.*.id
}

output "this_internet_gateway_id" {
    description     =   "The ID of Internet Gateway of VPC"
    value           =   aws_internet_gateway.this.id
}

output "public_route_table_id" {
    description     =   "The ID of Route Table for Public Subnet"
    value           =   aws_route_table.public.id
}

output "private_route_table_id" {
    description     =   "The ID of Route Table for Private Subnet"
    value           =   aws_route_table.private.id
}

output "this_nat_gateway_id" {
    description     =   "The ID of NAT Gateway of VPC"
    value           =   aws_nat_gateway.this.id
}

output "eks_lenasupport_security_group_id" {
    description     =   "The ID of Security Group for eks-lenasupport"
    value           =   aws_security_group.eks-lenasupport.id
}

output "eks_cluster_addon_security_group_id" {
    description     =   "The ID of Security Group for eks-cluster-addon"
    value           =   aws_security_group.eks-cluster-addon.id
}

output "eks_nodegroup_security_group_id" {
    description     =   "The ID of Security Group for eks-nodegroup"
    value           =   aws_security_group.eks-nodegroup.id
}

