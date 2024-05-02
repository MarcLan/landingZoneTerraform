module "lts" {
  source = "../../management/lts"
  lts = {

    "group1" = {
      group_name = "group-1"
      group_ttl  = "30"

      streams = {
        "stream11" = {
          stream_name = "stream-1-1"
        }
        "stream12" = {
          stream_name = "stream-1-2"
        }
      }
    }

    "group2" = {
      group_name = "group-2"
      group_ttl  = "30"

      streams = {
        "stream21" = {
          stream_name = "stream-2-1"
        }
        "stream22" = {
          stream_name = "stream-2-2"
        }
      }
    }

  }
}
