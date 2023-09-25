module "ecs" {
  source = "../../computing/ecs"
  ecs = {

    "test1" = {
      name               = "test-1"
      password           = "Ly67142325@"
      flavor_id          = "s7n.small.1"
      image_name         = "CentOS 8.0 64bit"
      subnet_id          = module.vpcs.subnet_ids["vpc1.subnet11"]
      security_group_ids = ["${module.sgs.sg_ids["sg1"]}"]
    }

    "test2" = {
      name               = "test-2"
      password           = "Ly67142325@"
      flavor_id          = "s7n.small.1"
      image_name         = "CentOS 8.0 64bit"
      subnet_id          = module.vpcs.subnet_ids["vpc2.subnet21"]
      security_group_ids = ["${module.sgs.sg_ids["sg1"]}"]
    }

  }
}
