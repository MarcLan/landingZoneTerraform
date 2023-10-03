module "er" {
  source = "../../network/er"
  name = "test-1"
  enterprise = module.eps.eps_ids["nonprod"]
  asn = "64512"
  az = ["ap-southeast-2a", "ap-southeast-2c"]

  attachment_name = "test-attachment"
  er_id = module.er.er_id
  vpc_id = module.vpcs.vpc_ids["vpc1"]
  subnet_id = module.vpcs.subnet_ids["vpc1.subnet11"]
}