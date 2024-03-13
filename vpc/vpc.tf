module "eps" {
  source = "../eps"
}

module "vpcs" {
  source = "../modules/network/vpc"
  vpcs = {
    "UAT" = {
      vpc_name    = "UAB-UAT-VPC"
      vpc_cidr    = "10.254.0.0/16"
      enterprise  = module.eps.eps_ids["uab"]
      description = "For UAB UAT environtment"
      subnets = {
        "subnet_public_1" = {
          subnet_name = "UAB-UAT-Public-Subnet-1"
          subnet_cidr = "10.254.1.0/24"
          #description = "UAB-UAT-Public-Subnet-RouteTable"
        }

        "subnet_public_2" = {
          subnet_name = "UAB-UAT-Public-Subnet-2"
          subnet_cidr = "10.254.5.0/24"
          #description = "UAB-UAT-Private-Subnet-RouteTable"
        }

        "subnet_public_3" = {
          subnet_name = "UAB-UAT-Public-Subnet-3"
          subnet_cidr = "10.254.6.0/24"
        }

        "subnet_private_1" = {
          subnet_name = "UAB-UAT-Private-Subnet-1"
          subnet_cidr = "10.254.3.0/24"
        }

        "subnet_private_2" = {
          subnet_name = "UAB-UAT-Private-Subnet-2"
          subnet_cidr = "10.254.2.0/24"
          #description = "UAB-UAT-Public-DB-Subnet-RouteTable"
        }

        "subnet_private_3" = {
          subnet_name = "UAB-UAT-Public-Subnet-3"
          subnet_cidr = "10.254.4.0/24"
        }

      }
    }

    "Prod" = {
      vpc_name   = "UAB-Prod-VPC"
      vpc_cidr   = "10.253.0.0/16"
      enterprise = module.eps.eps_ids["uab"]
      subnets = {

        "UAB-Prod-ALB-Public-Subnet-01" = {
          subnet_name = "UAB-Prod-ALB-Public-Subnet-01"
          subnet_cidr = "10.253.8.0/24"
        }

        "UAB-Prod-BastionHost-Public-Subnet" = {
          subnet_name = "UAB-Prod-BastionHost-Public-Subnet"
          subnet_cidr = "10.253.1.0/24"
        }

        "UAB-Prod-EC2DB-Private-Subnet-01" = {
          subnet_name = "UAB-Prod-EC2DB-Private-Subnet-01"
          subnet_cidr = "10.253.10.0/24"
        }

        "UAB-Prod-WebAPI-Private-Subnet-01" = {
          subnet_name = "UAB-Prod-WebAPI-Private-Subnet-01"
          subnet_cidr = "10.253.2.0/24"
        }

        "UAB-Prod-DB-Private-Subnet-01" = {
          subnet_name = "UAB-Prod-DB-Private-Subnet-01"
          subnet_cidr = "10.253.6.0/24"
        }

        "UAB-Prod-MerchantWeb-Private-Subnet-01" = {
          subnet_name = "UAB-Prod-MerchantWeb-Private-Subnet-01"
          subnet_cidr = "10.253.4.0/24"
        }

        "UAB-Prod-ALB-Public-Subnet-02" = {
          subnet_name = "UAB-Prod-ALB-Public-Subnet-02"
          subnet_cidr = "10.253.9.0/24"
        }

        "UAB-Prod-WebAPI-Private-Subnet-02" = {
          subnet_name = "UAB-Prod-WebAPI-Private-Subnet-02"
          subnet_cidr = "10.253.3.0/24"
        }

        "UAB-Prod-EC2DB-Private-Subnet-02" = {
          subnet_name = "UAB-Prod-EC2DB-Private-Subnet-02"
          subnet_cidr = "10.253.11.0/24"
        }

        "UAB-Prod-MerchantWeb-Private-Subnet-02" = {
          subnet_name = "UAB-Prod-MerchantWeb-Private-Subnet-02"
          subnet_cidr = "10.253.5.0/24"
        }

        "UAB-Prod-DB-Private-Subnet-02" = {
          subnet_name = "UAB-Prod-DB-Private-Subnet-02"
          subnet_cidr = "10.253.7.0/24"
        }

      }
    }
  }
}
