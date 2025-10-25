variable "vpc_id" {
  type = string
  
}

variable "bastion_ami_id" {
  type = string
  default = "ami-0360c520857e3138f"
  
}
variable "bastion_key_name" {
  type = string
  default = "secondaccount"
}

variable "public_subnet_id" {
  type = string
  
}


variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "project"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.31"
}

variable "controller_iam_role_name" {
  description = "IAM Role name for EKS cluster controller"
  type        = string
  default     = "project_eks_cluster_role"
}

variable "worker_iam_role_name" {
  description = "IAM Role name for EKS worker nodes"
  type        = string
  default     = "project_eks_node_group_role"
}

variable "vpc_subnet_ids" {
  description = "List of subnet IDs for the EKS cluster (private as needed)"
  type        = list(string)
  default     = []
}

variable "worker_node_subnet_ids" {
  description = "List of subnet IDs for EKS worker nodes (should be private subnets)"
  type        = list(string)
  default     = []
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "worker_node_group"
}

variable "node_group_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 1
}

variable "node_group_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "node_group_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}