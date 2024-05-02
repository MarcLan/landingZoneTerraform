# module "ecs_for_each" {
#   source = "../../compute/ecsForEach"
#   ecs = {

#     "test1" = {
#       name               = "for_each-1"
#       password           = "Ly67142325@"
#       flavor_id     _ids     = "s7n.small.1"
#       image_name         = "CentOS 8.0 64bit"
#       subnet_id          = module.vpcs.subnet_ids["vpc1.subnet11"]
#       security_group_ids = ["${module.sgs.sg_ids["sg1"]}"]
#     }

#     "test2" = {
#       name               = "for_each-2"
#       password           = "Ly67142325@"
#       flavor_id          = "s7n.small.1"
#       image_name         = "CentOS 8.0 64bit"
#       subnet_id          = module.vpcs.subnet_ids["vpc2.subnet21"]
#       security_group_ids = ["${module.sgs.sg_ids["sg1"]}"]
#     }

#   }
# }

# module "ecs_count" {
#   source = "../../compute/ecsCount"

#   enterprise     = module.eps.eps_ids["nonprod"]
#   quantity       = 3
#   name           = "ecs-1"
#   password       = "Ly7142325@"
#   image_name     = "CentOS 8.0 64bit"
#   flavor_name    = "s7n.small.1"
#   subnet         = module.vpcs.subnet_ids["vpc1.subnet11"]
#   security_group = ["${module.sgs.sg_ids["sg1"]}"]

# }
