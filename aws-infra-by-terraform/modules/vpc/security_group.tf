# Security Group for EKS-Lenasupport
resource "aws_security_group" "eks-lenasupport" {
  name                  =   "${var.prefix}-eks-lenasupport-sg"
  vpc_id                =   aws_vpc.this.id

  # Outbound ALL
  egress {
    from_port           =   0
    to_port             =   0
    protocol            =   "-1"
    cidr_blocks         =   ["0.0.0.0/0"]
  }

  tags = {
    Name                =   "${var.prefix}-eks-lenasupport-sg"
    Managed_by          =   "terraform"
  }
}

resource "aws_security_group_rule" "eks-lenasupport-ingress-ssh" {
  description           =   "Allow SSH for lgcns cloud"
  cidr_blocks           =   ["27.122.140.10/32"]
  from_port             =   22
  to_port               =   22
  protocol              =   "tcp"
  security_group_id     =   aws_security_group.eks-lenasupport.id
  type                  =   "ingress"
}

resource "aws_security_group_rule" "eks-lenasupport-ingress-self" {
  description           =   "self"
  from_port             =   0
  to_port               =   0
  protocol              =   -1
  security_group_id     =   aws_security_group.eks-lenasupport.id
  type                  =   "ingress"
  self                  =   "true"
}

resource "aws_security_group_rule" "eks-lenasupport-ingress-cns-local" {
  description           =   "Allow SSH for lgcns local"
  cidr_blocks           =   ["165.243.5.20/32"]
  from_port             =   0
  to_port               =   0
  protocol              =   -1
  security_group_id     =   aws_security_group.eks-lenasupport.id
  type                  =   "ingress"
}


# Security Group for EKS-Cluster-Addon
resource "aws_security_group" "eks-cluster-addon" {
  name                  =   "${var.prefix}-eks-cluster-addon-sg"
  vpc_id                =   aws_vpc.this.id

  # Outbound ALL
  egress {
    from_port           =   0
    to_port             =   0
    protocol            =   "-1"
    cidr_blocks         =   ["0.0.0.0/0"]
  }

  tags = {
    Name                =   "${var.prefix}-eks-cluster-addon-sg"
    Managed_by          =   "terraform"
  }
}

resource "aws_security_group_rule" "eks-cluster-addon-ingress-bastion" {
  description              =   "bastion to cluster apiserver"
  from_port                =   0
  to_port                  =   0
  protocol                 =   -1
  security_group_id        =   aws_security_group.eks-cluster-addon.id
  source_security_group_id =   aws_security_group.eks-lenasupport.id
  type                     =   "ingress"
}


# Security Group for EKS-Cluster-Nodegroup
resource "aws_security_group" "eks-nodegroup" {
  name                  =   "${var.prefix}-eks-nodegroup-sg"
  vpc_id                =   aws_vpc.this.id

  # Outbound ALL
  egress {
    from_port           =   0
    to_port             =   0
    protocol            =   "-1"
    cidr_blocks         =   ["0.0.0.0/0"]
  }

  tags = {
    Name                =   "${var.prefix}-eks-nodegroup-sg"
    Managed_by          =   "terraform"
  }
}

resource "aws_security_group_rule" "eks-nodegroup-ingress-self" {
  description              =   "Allow nodes to communicate with each other (all ports)"
  from_port                =   0
  to_port                  =   0
  protocol                 =   -1
  security_group_id        =   aws_security_group.eks-nodegroup.id
  type                     =   "ingress"
  self                     =   "true"
}

