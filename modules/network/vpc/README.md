## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_huaweicloud"></a> [huaweicloud](#requirement\_huaweicloud) | 1.50.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_huaweicloud"></a> [huaweicloud](#provider\_huaweicloud) | 1.50.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [huaweicloud_vpc.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/vpc) | resource |
| [huaweicloud_vpc_subnet.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpcs"></a> [vpcs](#input\_vpcs) | VPCs configuration | <pre>map(object({<br><br>    vpc_name    = string<br>    vpc_cidr    = string<br>    description = optional(string, null)<br>    enterprise  = optional(string, "default")<br><br>    subnets = optional(map(object({<br>      subnet_name = string<br>      subnet_cidr = string<br>      description = optional(string, null)<br>    })))<br><br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_ids"></a> [vpc\_ids](#output\_vpc\_ids) | Out put VPCs IDs for other resources |
