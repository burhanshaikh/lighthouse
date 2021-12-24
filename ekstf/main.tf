module "eksvpc" {
    source              = "./modules/vpc"
    // The variables of eks module should be given a value here or in turn another variable
    vpc_name            = var.vpc_name
    vpc_cidr            = var.vpc_cidr
    vpc_azs             = var.vpc_azs
    subnets_cidr        = var.subnets_cidr
    tags                = var.tags
    
}

module "ekscluster" {
    source          = "./modules/eks"
    // The variables of eks module should be given a value here or in turn another variable
    cluster_version = var.cluster_version
    cluster_name    = var.cluster_name
    vpc_id          = module.eksvpc.vpc_id
    subnets         = module.eksvpc.public_subnets
    //vpc_id          = var.vpc_id
    //subnets         = var.subnets
    worker_groups   = var.worker_groups
    
    depends_on = [
      module.eksvpc
    ]
}

data "aws_eks_cluster_auth" "myeks" {
  name = module.ekscluster.cluster_id // from ekscluster output.tf
}