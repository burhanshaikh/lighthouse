output "cluster_name" {
  description = "The name of the cluster"
  value = module.ekscluster.cluster_name
}

output "cluster_version" {
  description = "The version of the cluster"
  value = module.ekscluster.cluster_version
}
  
output "vpc_name" {
  description = "The name of the VPC in which EKS Cluster is deployed"
  value = module.eksvpc.vpc_name // from output.tf of eksvpc module
}
