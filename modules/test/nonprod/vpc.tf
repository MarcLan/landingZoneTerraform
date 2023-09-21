module "vpcs" {
  source = "../../network/vpc"
  vpcs = {
    "vpc1" = {
      vpc_name   = "vpc-1"
      vpc_cidr   = "192.168.0.0/16"
      enterprise = module.eps.eps_ids["sit"]
      subnets = {
        "subnet11" = {
          subnet_name = "subnet-1-1"
          subnet_cidr = "192.168.0.0/24"
        }
        "subnet12" = {
          subnet_name = "subnet-1-2"
          subnet_cidr = "192.168.1.0/24"
        }
      }
    }

    "vpc2" = {
      vpc_name   = "vpc-2"
      vpc_cidr   = "172.16.0.0/16"
      enterprise = module.eps.eps_ids["sit"]
      subnets = {
        "subnet21" = {
          subnet_name = "subnet-2-1"
          subnet_cidr = "172.16.0.0/24"
        }
        "subnet22" = {
          subnet_name = "subnet-2-2"
          subnet_cidr = "172.16.1.0/24"
        }
      }
    }

  }

  vpc_flow_log = {
    "vpcFlowLog1" = {
      name          = "vpc-flow-log-1"
      resource_type = "network"
      resource_id   = module.vpcs.subnet_ids["vpc1.subnet11"]
      lts_group_id  = module.lts.lts_group_ids["group1"]
      lts_stream_id = module.lts.lts_stream_ids["group1.stream11"]
    }
  }

}