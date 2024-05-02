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
| [huaweicloud_vpc_flow_log.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/vpc_flow_log) | resource |
| [huaweicloud_vpc_peering_connection.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/vpc_peering_connection) | resource |
| [huaweicloud_vpc_subnet.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_flow_log"></a> [vpc\_flow\_log](#input\_vpc\_flow\_log) | VPCs flow log variables | <pre>map(object({<br><br>    name          = string<br>    type          = optional(string, "network")<br>    resource_id   = string<br>    traffic_type  = optional(string, "all")<br>    lts_group_id  = string<br>    lts_stream_id = string<br><br>  }))</pre> | n/a | yes |
| <a name="input_vpc_peering"></a> [vpc\_peering](#input\_vpc\_peering) | VPC peering variables | <pre>map(object({<br><br>    name        = string<br>    vpc_id      = string<br>    peer_vpc_id = string<br>    <br>  }))</pre> | n/a | yes |
| <a name="input_vpcs"></a> [vpcs](#input\_vpcs) | VPCs variables | <pre>map(object({<br><br>    vpc_name    = string<br>    vpc_cidr    = string<br>    description = optional(string, null)<br>    enterprise  = optional(string, "default")<br><br>    subnets = optional(map(object({<br>      subnet_name = string<br>      subnet_cidr = string<br>      description = optional(string, null)<br>    })))<br><br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | Out put subnets IDs for other resources |
| <a name="output_vpc_ids"></a> [vpc\_ids](#output\_vpc\_ids) | Out put VPCs IDs for other resources |
| <a name="output_vpc_peering_ids"></a> [vpc\_peering\_ids](#output\_vpc\_peering\_ids) | Out put VPC Peering IDs for other resources |

<!-- BEGIN_TF_DOCS -->
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
| [huaweicloud_vpc_flow_log.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/vpc_flow_log) | resource |
| [huaweicloud_vpc_peering_connection.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/vpc_peering_connection) | resource |
| [huaweicloud_vpc_route.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/vpc_route) | resource |
| [huaweicloud_vpc_subnet.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_route"></a> [route](#input\_route) | Multiple routes variable | <pre>map(object({<br>    vpc_id      = string<br>    destination = string<br>    type        = string<br>    nexthop     = string<br>  }))</pre> | `{}` | no |
| <a name="input_vpc_flow_log"></a> [vpc\_flow\_log](#input\_vpc\_flow\_log) | VPCs flow log variable | <pre>map(object({<br><br>    name          = string<br>    type          = optional(string, "network")<br>    resource_id   = string<br>    traffic_type  = optional(string, "all")<br>    lts_group_id  = string<br>    lts_stream_id = string<br><br>  }))</pre> | `{}` | no |
| <a name="input_vpc_peering"></a> [vpc\_peering](#input\_vpc\_peering) | VPC peering variable | <pre>map(object({<br><br>    name        = string<br>    vpc_id      = string<br>    peer_vpc_id = string<br><br>  }))</pre> | `{}` | no |
| <a name="input_vpcs"></a> [vpcs](#input\_vpcs) | VPCs variable | <pre>map(object({<br><br>    vpc_name    = string<br>    vpc_cidr    = string<br>    description = optional(string, null)<br>    enterprise  = optional(string, "default")<br><br>    subnets = optional(map(object({<br>      subnet_name = string<br>      subnet_cidr = string<br>      description = optional(string, null)<br>    })))<br><br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | Out put subnets IDs for other resources |
| <a name="output_vpc_cidr"></a> [vpc\_cidr](#output\_vpc\_cidr) | Out put VPCs IDs for other resources |
| <a name="output_vpc_ids"></a> [vpc\_ids](#output\_vpc\_ids) | Out put VPCs IDs for other resources |
| <a name="output_vpc_peering_ids"></a> [vpc\_peering\_ids](#output\_vpc\_peering\_ids) | Out put VPC Peering IDs for other resources |
<!-- END_TF_DOCS -->