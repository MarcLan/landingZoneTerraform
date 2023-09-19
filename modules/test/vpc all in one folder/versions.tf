terraform {
  required_version = ">=1.3.0"
  
  required_providers {
    huaweicloud = {
        source = "huaweicloud/huaweicloud"
        version = "1.50.0"
    }
  }
}

# the first HIS_landingzone account AKSK
provider "huaweicloud" {
  region = "ap-southeast-2"
  access_key = "SGJXXLWDW8E1V4GYQI73"
  secret_key = "pR03dkNMUI0XS21cmXH6dj9mEWP4RZlH52VMAO3q"
}