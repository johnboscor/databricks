data "databricks_spark_version" "latest_lts" {
  provider = databricks.john-new-ws
  long_term_support = true
}

resource "databricks_cluster" "tiny" {
  provider = databricks.john-new-ws
  cluster_name            = "tiny"
  spark_version           = data.databricks_spark_version.latest_lts.id
  # node_type_id            = "m4.large"
  # driver_node_type_id     = "m4.large"
  instance_pool_id        = "0702-180641-edema3-pool-7bfthfyq"
  data_security_mode      = "SINGLE_USER"
  single_user_name        = "rjohnbosco@gmail.com"
  autotermination_minutes = 60
  autoscale {
    min_workers = 1
    max_workers = 2
  }
  # aws_attributes {
  #   first_on_demand        = 1
  #   availability           = "SPOT_WITH_FALLBACK"
  #   #zone_id                = var.aws_zone_id // required, must be in the same region as the workspace, it simply ignores other region's zone
  #   spot_bid_price_percent = 100
  #   ebs_volume_type        = "GENERAL_PURPOSE_SSD"
  #   ebs_volume_count       = 3
  #   ebs_volume_size        = 50
  # }
}

output "sample_cluster_id" {
  value = databricks_cluster.tiny.cluster_id
}
