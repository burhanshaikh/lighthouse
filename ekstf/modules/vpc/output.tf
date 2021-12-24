output "vpc_id" {
  description = "VPC ID"
  value = module.vpc.vpc_id
}

output "vpc_name" {
  description = "Name of the VPC"
  value = module.vpc.name
}
  

output "public_subnets" {
  description = "Subnets of the VPC"
  value = module.vpc.public_subnets
}

