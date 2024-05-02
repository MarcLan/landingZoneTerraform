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
| [huaweicloud_obs_bucket.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/obs_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_obs"></a> [obs](#input\_obs) | OBS variables | <pre>map(object({<br>    name       = string<br>    acl        = string<br>    enterprise = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_obs_name"></a> [obs\_name](#output\_obs\_name) | Out put obs\_name for other resources |

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
| [huaweicloud_obs_bucket.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/obs_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_obs"></a> [obs](#input\_obs) | OBS variables | <pre>map(object({<br>    name       = string<br>    acl        = string<br>    enterprise = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_obs_name"></a> [obs\_name](#output\_obs\_name) | Out put obs\_name for other resources |
<!-- END_TF_DOCS -->