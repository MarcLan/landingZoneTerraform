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
| [huaweicloud_cts_data_tracker.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/cts_data_tracker) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cts"></a> [cts](#input\_cts) | CTS description | <pre>map(object({<br><br>    name           = string<br>    data_bucket    = string<br>    #bucket_name    = string<br>    data_operation = optional(list(string), null)<br>    lts_enabled    = optional(bool, true)<br><br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cts_name"></a> [cts\_name](#output\_cts\_name) | Out put cts name for other resources |
