module "vpcs" {
  source = "../../../network/vpc"
  vpcs = {
    "vpc1" = {
      vpc_name = "vpc-11"
      vpc_cidr = "192.168.0.0/16"
      enterprise = each.value["dev"]
      subnets = {
        "subnet11" = {
          subnet_name = "subnet-1-1-1"
          subnet_cidr = "192.168.0.0/24"
        }
        "subnet12" = {
          subnet_name = "subnet-1-2"
          subnet_cidr = "192.168.1.0/24"
        }
      }
    }

    "vpc2" = {
      vpc_name = "vpc-2"
      vpc_cidr = "172.16.0.0/16"
      subnets = {
        "subnet21" = {
          subnet_name = "subnet-2-1"
          subnet_cidr = "172.16.0.0/24"
        }
        "subnet22" = {
          subnet_name  = "subnet-2-2"
          subnet_cidr = "172.16.1.0/24"
        }
      }
    }

  }
}
