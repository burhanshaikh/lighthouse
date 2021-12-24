variable "cluster_version" {
  description = "EKS Cluster Version"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type = string
}

variable "vpc_id" {
  description = "ID of VPC in which EKS cluster will be created"
}

variable "subnets" {
  description = "Subnets in which EKS cluster will be created, subnets must be in at least two different availability zones"
}

variable "worker_groups" {
  description = "Worker groups in EKS cluster and their config"
}


