module "eps" {
  source = "../../management/eps"
  eps = {
    "nonprod" = {
      name        = "nonprod"
      description = "nonprod enterprise project"
    }
  }
}
