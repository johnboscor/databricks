region                      = "us-west-1"                                    // AWS region where you want to deploy your resources
cidr_block                  = "10.4.0.0/16"                                  // CIDR block for the workspace VPC, will be divided in two equal sized subnets
my_username                 = "john.br@slalom.com"                          // Username for tagging the resources
databricks_users            = ["john.br@slalom.com"] // List of users that will be admins at the workspace level
databricks_metastore_admins = ["john.br@slalom.com"]                        // List of users that will be admins for Unity Catalog
unity_admin_group           = "unity-admin-group"                            // Metastore Owner and Admin
databricks_account_id       = "1ff0ad5e-a173-489e-9b37-9a207e938c2d"                   // Databricks Account ID
databricks_client_id        = "c199dd0f-83f2-40b0-bf8b-5241cec06539"             // Databricks Service Principal Client ID
databricks_client_secret    = "dose379c3d95273a3bd793d833b6379340af"         // Databricks Service Principal Client Secret
workspace_name              = "john-terraform-ws"               // Databricks Workspace Name - IF NOT PROVIDED or EMPTY it will defauly to a random "demo-<number>" prefix
tags = {
  Environment = "Demo-with-terraform"
}
