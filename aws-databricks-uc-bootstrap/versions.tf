terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "1.4.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}


provider "databricks" {
  alias = "john-new-ws"
  host  = "https://dbc-ad822119-1b98.cloud.databricks.com"
  token = "dapi45f290e770aeceb2ddd4bac61744b8e0"
}
