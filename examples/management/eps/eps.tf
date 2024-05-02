module "eps" {
  source = "../../../management/eps"
  eps = {
    "dev" = {
      name        = "dev"
      description = "dev enterprise project"
    }

    "sit" = {
      name        = "sit"
      description = "sit enterprise project"
    }
  }
}
