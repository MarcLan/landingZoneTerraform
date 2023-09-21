module "sgs" {
  source = "../../network/sg"
  sgs = {
    "sg1" = {
      name        = "sg-1"
      description = "sg-1"
      rules = {
        "rule1" = {
          direction        = "ingress"
          action           = "allow"
          ethertype        = "IPv4"
          ports            = "80"
          protocol         = "tcp"
          priority         = "1"
          remote_ip_prefix = "0.0.0.0/0"
        }
      }
    }
  }
}

