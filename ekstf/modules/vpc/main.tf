module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"

  name            = var.vpc_name
  cidr            = var.vpc_cidr

  azs             = var.vpc_azs
  public_subnets  = var.subnets_cidr

  tags            = var.tags
  //azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  //public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  

  /*tags = {
    Terraform = "true"
    Environment = "dev"
  }*/
}