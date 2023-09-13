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
| [huaweicloud_enterprise_project.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/enterprise_project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eps"></a> [eps](#input\_eps) | Enterprise Projects configuration | <pre>map(object({<br>    name        = string<br>    description = optional(string, null)<br>  }))</pre> | <pre>{<br>  "vpc": {<br>    "name": ""<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eps_ids"></a> [eps\_ids](#output\_eps\_ids) | Output Enterprise Project IDs |
