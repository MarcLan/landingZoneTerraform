module "eps" {
  source = "../management/"
}

module "vpcs" {
  source = "../../modules/network/vpc"
  vpcs = {

    vpc-1 = {
      name       = "vpc-1"
      cidr       = "192.168.0.0/16"
      enterprise = module.eps.eps_ids["dev"]
    }

    vpc-2 = {
      name       = "vpc-2"
      cidr       = "172.16.0.0/16"
      enterprise = module.eps.eps_ids["dev"]
    }

    vpc-3 = {
      name       = "vpc-3"
      cidr       = "10.0.0.0/16"
      enterprise = module.eps.eps_ids["dev"]
    }

  }
}
