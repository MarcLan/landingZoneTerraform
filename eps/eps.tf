module "eps" {
  source = "../modules/management/eps"
  eps = {
    "uab" = {
      name        = "uab"
      description = "uab project"
    }
  }
}
