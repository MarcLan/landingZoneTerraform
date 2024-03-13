module "sgs" {
  source = "../modules/network/sg"
  sgs = {
    "Merchant-Portal-ALB" = {
        name = "Merchant-Portal-ALB"
        rules = {}
    }
  }
}