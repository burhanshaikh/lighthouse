output "cluster_name" {
  description = "The name of the cluster"
  value = var.cluster_name
}

output "cluster_version" {
  description = "The version of the cluster"
  value = module.eks.cluster_version
}
  
output "eks_endpoint" {
  description = "The endpoint of the EKS cluster"
  value = module.eks.cluster_endpoint
}

output "eks_certificate_authority_data" {
  description = "The certificate authority data for the EKS cluster"
  value = module.eks.cluster_certificate_authority_data
}
  
output "cluster_id" {
  description = "The ID of the EKS cluster"
  value = module.eks.cluster_id
}