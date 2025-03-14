resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  version  = var.cluster_version
  role_arn = var.role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  tags = var.tags
  
}

resource "aws_eks_node_group" "eks_nodes" {
  for_each = { for ng in var.node_group_config : ng.node_group_name => ng }

  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = each.value.node_group_name
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = each.value.desired_capacity
    min_size     = each.value.min_capacity
    max_size     = each.value.max_capacity
  }

  instance_types = [each.value.instance_type]
  #disk_type      = each.value.disk_type
  disk_size = each.value.disk_size

  tags = var.tags
}
