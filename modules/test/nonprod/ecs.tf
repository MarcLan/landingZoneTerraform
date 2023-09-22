module "ecs" {
  source = "../../computing/ecs"
  ecs = {
    "ecs1" = {
      name      = "test"
      subnet_id = module.vpcs.subnet_ids["vpc1.subnet11"]
      security_group_ids = ["${module.sgs.sg_ids["sg1"]}"]
    }
  }
}
