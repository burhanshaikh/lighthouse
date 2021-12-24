//eks

variable "cluster_version" {
  description = "EKS Cluster Version"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type = string
}

/*variable "vpc_id" {
  description = "ID of VPC in which EKS cluster will be created"
}

variable "subnets" {
  description = "Subnets in which EKS cluster will be created, subnets must be in at least two different availability zones"
}*/

variable "worker_groups" {
  description = "Worker groups in EKS cluster and their config"
}


//vpc

variable "vpc_name" {
  description = "The name of the VPC"
}

variable "vpc_cidr" {
  description = "The CIDR block to use when creating the VPC"
}
  
variable "vpc_azs" {
  description = "The availability zones to use for the subnets"
  type        = list(string)
}

variable "subnets_cidr" {
    description = "The CIDR blocks to use for the subnets"
    type        = list(string)
}

variable "tags" {
   description = "The tags to apply to the resources"
    type        = map(string)
}
