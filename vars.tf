variable "repo_names" {
  type    = list(string)
  default = ["bdg-repoarmentest-1", "bdg-repoarmentest-2", "bdg-repoarmentest-3"]
}


variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR private subnets"
  type        = list(string)
}

variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "cluster_version" {
  description = "EKS cluster versiom"
  type        = string
}

variable "node_group_config" {
  description = "NodeGroup config"
  type        = list(any)
}

variable "region" {
  description = "CIDR block для VPC"
  default     = "us-west-1"
}
