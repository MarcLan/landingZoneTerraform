terraform {
  required_version = ">=1.3.0"
  
  required_providers {
    huaweicloud = {
        source = "huaweicloud/huaweicloud"
        version = "1.50.0"
    }
  }
}

provider "huaweicloud" {
  region = "ap-southeast-2"
  access_key = "TPATVSHBCT4JRBASKPYX"
  secret_key = "KWBrVaBkBA5f9UDfgK5ZweFOLziYxIUWaUu0SyAe"
}