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
  access_key = "CI9ORVK45J4C5079EBEH"
  secret_key = "9hCwrHxrkYgFEm8quZJ7HzAkr9US5KWQMZTQyqER"
}