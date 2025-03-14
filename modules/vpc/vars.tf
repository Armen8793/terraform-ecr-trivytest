variable "cidr_block" {
  description = "Main CIDR for VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR for private subnets"
  type        = list(string)
}

