module "obs" {
  source = "../../storage/obs"
  obs = {

    "obs1" = {
      name       = "obs-landingzone-1"
      acl        = "public-read"
      enterprise = module.eps.eps_ids["nonprod"]
    }

    "obs2" = {
      name       = "obs-landingzone-2"
      acl        = "public-read"
      enterprise = module.eps.eps_ids["nonprod"]
    }

  }
}
