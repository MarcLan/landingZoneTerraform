module "lts_groups" {
  source = "../../modules/management/lts"
  lts_groups = {
    lts_group_1 = {
      name = "lts-group-1"
      ttl  = "30"
    }
    lts_group_2 = {
      name = "lts-group-2"
      ttl  = "30"
    }
  }
  lts_streams = {
    lts_stream_1_1 = {
      name     = "lts-stream-1-1"
      group_id = module.lts_groups.lts_group_ids["lts_group_1"]
    }
    lts_stream_1_2 = {
      name     = "lts-stream-1-2"
      group_id = module.lts_groups.lts_group_ids["lts_group_1"]
    }
    lts_stream_1_3 = {
      name     = "lts-stream-1-3"
      group_id = module.lts_groups.lts_group_ids["lts_group_1"]
    }
    lts_stream_2_1 = {
      name     = "lts-stream-2-1"
      group_id = module.lts_groups.lts_group_ids["lts_group_2"]
    }
    lts_stream_2_2 = {
      name     = "lts-stream-2-2"
      group_id = module.lts_groups.lts_group_ids["lts_group_2"]
    }
    lts_stream_2_3 = {
      name     = "lts-stream-2-3"
      group_id = module.lts_groups.lts_group_ids["lts_group_2"]
    }
  }
}
