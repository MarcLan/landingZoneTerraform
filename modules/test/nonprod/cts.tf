module "cts" {
  source = "../../management/cts"
  cts = {
    "cts1" = {
      source      = "../../management/cts"
      name        = "cts-test"
      data_bucket = "obs-landingzone-1"
      data_operation = ["READ", "WRITE"]
      lts_enabled    = true
    }
  }
}
