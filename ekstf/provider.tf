terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}


provider "kubernetes" {
  host                   = module.ekscluster.eks_endpoint
  cluster_ca_certificate = base64decode(module.ekscluster.eks_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.myeks.token
}