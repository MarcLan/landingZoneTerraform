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
  access_key = "Q7DKQ5EAGCHWNUKIECHR"
  secret_key = "4iEpZGFlO3sAVFmH1j7uenU35szr13H29rXJkVxw"
}