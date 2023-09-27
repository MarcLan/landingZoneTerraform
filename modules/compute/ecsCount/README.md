## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_huaweicloud"></a> [huaweicloud](#requirement\_huaweicloud) | >= 1.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_huaweicloud"></a> [huaweicloud](#provider\_huaweicloud) | >= 1.40.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [huaweicloud_compute_instance.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/compute_instance) | resource |
| [huaweicloud_images_image.myimage](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/data-sources/images_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enterprise"></a> [enterprise](#input\_enterprise) | enterprise project id | `string` | n/a | yes |
| <a name="input_flavor_name"></a> [flavor\_name](#input\_flavor\_name) | flavor name | `string` | n/a | yes |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | image name | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | ecs name | `string` | n/a | yes |
| <a name="input_name_suffix"></a> [name\_suffix](#input\_name\_suffix) | The suffix string of name for all ECS resources | `string` | `""` | no |
| <a name="input_password"></a> [password](#input\_password) | ecs password | `string` | n/a | yes |
| <a name="input_quantity"></a> [quantity](#input\_quantity) | How many ECS need to be created | `number` | n/a | yes |
| <a name="input_security_group"></a> [security\_group](#input\_security\_group) | security group id | `set(string)` | n/a | yes |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | subnet id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_access_ipv4"></a> [instance\_access\_ipv4](#output\_instance\_access\_ipv4) | The fixed IPv4 address or the floating IP of the first ECS instance |
| <a name="output_instance_access_ipv6"></a> [instance\_access\_ipv6](#output\_instance\_access\_ipv6) | The fixed IPv6 address of the first ECS instance |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The ID of the first ECS instance |
| <a name="output_instance_ids"></a> [instance\_ids](#output\_instance\_ids) | The ID list of the ECS instances |
| <a name="output_instance_name"></a> [instance\_name](#output\_instance\_name) | The name of the first ECS instance |
| <a name="output_instance_network"></a> [instance\_network](#output\_instance\_network) | The network object of the first ECS instance |
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | The public IP of the first ECS instance |
| <a name="output_instance_status"></a> [instance\_status](#output\_instance\_status) | The status of the first ECS instance |
