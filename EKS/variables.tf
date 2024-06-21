variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "default-vpc"
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
  default     = "default-igw"
}

variable "rt_name2" {
  description = "Name of the Route Table"
  type        = string
  default     = "default-rt2"
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
  default     = "default-subnet"
}

variable "subnet_name2" {
  description = "Name of the second Subnet"
  type        = string
  default     = "default-subnet2"
}

variable "security_group_name" {
  description = "Name of the Security Group"
  type        = string
  default     = "default-sg"
}

variable "iam_role_eks" {
  description = "Name of the IAM Role for EKS"
  type        = string
  default     = "default-iam-role-eks"
}

variable "iam_role_node" {
  description = "Name of the IAM Role for EKS Nodes"
  type        = string
  default     = "default-iam-role-node"
}

variable "iam_policy_eks" {
  description = "Name of the IAM Policy for EKS"
  type        = string
  default     = "default-iam-policy-eks"
}

variable "iam_policy_node" {
  description = "Name of the IAM Policy for EKS Nodes"
  type        = string
  default     = "default-iam-policy-node"
}

variable "cluster_name" {
  description = "Name of the EKS Cluster"
  type        = string
  default     = "default-cluster"
}

variable "eksnode_group_name" {
  description = "Name of the EKS Node Group"
  type        = string
  default     = "default-node-group"
}
