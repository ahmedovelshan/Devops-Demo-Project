variable "vpc-name" {
  description = "Name of the VPC"
  type        = string
  default     = "devops-vpc"
}

variable "igw-name" {
  description = "Name of the Internet Gateway"
  type        = string
  default     = "devops-igw"
}

variable "subnet-name" {
  description = "Name of the Subnet"
  type        = string
  default     = "devops-subnet-1"
}

variable "subnet-name2" {
  description = "Name of the second Subnet"
  type        = string
  default     = "devops-subnet-2"
}

variable "security-group-name" {
  description = "Name of the Security Group"
  type        = string
  default     = "devops-sg"
}

variable "rt-name" {
  description = "Name of the Route Table"
  type        = string
  default     = "devops-route-table"
}

variable "rt-name2" {
  description = "Name of the Route Table"
  type        = string
  default     = "devops-route-table-2"
}


variable "iam_role_eks" {
  description = "Name of the IAM Role for EKS"
  type        = string
  default     = "devops-iam-role-eks"
}

variable "iam_role_node" {
  description = "Name of the IAM Role for EKS Nodes"
  type        = string
  default     = "devops-iam-role-ec2"
}

variable "iam_policy_eks" {
  description = "Name of the IAM Policy for EKS"
  type        = string
  default     = "devops-iam-policy-eks"
}

variable "iam_policy_node" {
  description = "Name of the IAM Policy for EKS Nodes"
  type        = string
  default     = "devops-iam-policy-node"
}

variable "cluster_name" {
  description = "Name of the EKS Cluster"
  type        = string
  default     = "devops-EKS-Cluster"
}

variable "eksnode_group_name" {
  description = "Name of the EKS Node Group"
  type        = string
  default     = "devops-Node-Group"
}
