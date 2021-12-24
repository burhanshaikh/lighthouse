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