vpc_cidr            = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]

cluster_name   = "test-cluster"
cluster_version = "1.31"

node_group_config = [
  {
    node_group_name  = "node-group-1"
    desired_capacity = 3
    min_capacity     = 2
    max_capacity     = 5
    instance_type    = "t3.medium"
    disk_size        = 100
    disk_type        = "gp3"
  },
  {
    node_group_name  = "node-group-2"
    desired_capacity = 3
    min_capacity     = 2
    max_capacity     = 5
    instance_type    = "t3.medium"
    disk_size        = 100
    disk_type        = "gp3"
  }
]

