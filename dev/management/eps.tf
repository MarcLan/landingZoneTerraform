module "eps" {
  source = "../../modules/management/eps"
  eps = {
    "dev" = {
      name = "dev"
      description = "This is the DEV enterprise project"
    }
    "sit" = {
      name = "sit"
      description = "This is the SIT enterprise project"
    }
  }
}