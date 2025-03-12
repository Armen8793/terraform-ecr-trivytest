variable "repo_names" {
  type    = list(string)
  default = ["bdg-repoarmentest-1", "bdg-repoarmentest-2", "bdg-repoarmentest-3"]
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1" 
}
