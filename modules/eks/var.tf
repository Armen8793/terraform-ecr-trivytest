variable "cluster_name" {
  description = "EKS Cluster name"
  type        = string
}

variable "cluster_version" {
  description = "EKS Cluster version"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "node_group_config" {
  description = "Конфигурация групп узлов для EKS"
  type = list(object({
    node_group_name  = string
    desired_capacity = number
    min_capacity     = number
    max_capacity     = number
    instance_type    = string
    disk_size        = number
    disk_type        = string
  }))
}


variable "tags" {
  description = "Tags for the EKS cluster"
  type        = map(string)
}

variable "role_arn" {
  description = "Role ARN for the EKS cluster"
  type        = string
}

variable "node_role_arn" {}
