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
| [huaweicloud_er_instance.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/er_instance) | resource |
| [huaweicloud_er_vpc_attachment.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/er_vpc_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_asn"></a> [asn](#input\_asn) | 64512 by default | `string` | n/a | yes |
| <a name="input_attachment_name"></a> [attachment\_name](#input\_attachment\_name) | Attaachment name | `string` | n/a | yes |
| <a name="input_auto_accept_shared_attachments"></a> [auto\_accept\_shared\_attachments](#input\_auto\_accept\_shared\_attachments) | accept shared attachment by default | `bool` | `true` | no |
| <a name="input_az"></a> [az](#input\_az) | Availability zone | `list(string)` | n/a | yes |
| <a name="input_enable_default_association"></a> [enable\_default\_association](#input\_enable\_default\_association) | Default association is enabled or not | `bool` | `true` | no |
| <a name="input_enable_default_propagation"></a> [enable\_default\_propagation](#input\_enable\_default\_propagation) | Default propagation is enabled or not | `bool` | `true` | no |
| <a name="input_enterprise"></a> [enterprise](#input\_enterprise) | Enterprise Project ID | `string` | n/a | yes |
| <a name="input_er_id"></a> [er\_id](#input\_er\_id) | Enterprise Router ID | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Enterprise Router name | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_er_id"></a> [er\_id](#output\_er\_id) | n/a |
<!-- END_TF_DOCS -->