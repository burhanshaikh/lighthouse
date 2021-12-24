
module "eks" {
  source          = "terraform-aws-modules/eks/aws"

  cluster_version = var.cluster_version
  cluster_name    = var.cluster_name
  vpc_id          = var.vpc_id
  subnets         = var.subnets
  worker_groups   = var.worker_groups
  //subnets         = ["subnet-abcde012", "subnet-bcde012a", "subnet-fghi345a"]

  /*worker_groups = [
    {
      instance_type = "m4.large"
      asg_max_size  = 5
    }
  ]*/
}