vpc_name = "eksnetwork"
vpc_cidr = "10.0.0.0/16"
vpc_azs = ["ap-south-1a", "ap-south-1b"]
subnets_cidr = ["10.0.101.0/24", "10.0.102.0/24"]
tags = {
  "owner" = "burhan"
  "terraform" = "true"
}
cluster_version = "1.21"
cluster_name = "eks-lighthouse"
worker_groups = [ {
  name = "lighthouse-workers"
  instance_type = "t2.medium"
  asg_max_size = 2
  asg_desired_capacity = 2 //If not mentioned 1 is taken as default
  asg_min_size = 2
  root_volume_size = 10
  root_volume_type = "gp2"
} ]