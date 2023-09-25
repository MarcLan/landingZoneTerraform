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
| [huaweicloud_compute_instance.this](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/resources/compute_instance) | resource |
| [huaweicloud_images_image.myimage](https://registry.terraform.io/providers/huaweicloud/huaweicloud/1.50.0/docs/data-sources/images_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ecs"></a> [ecs](#input\_ecs) | Multiple ECS variable | <pre>map(object({<br><br>    name               = string<br>    password           = string<br>    image_name         = string<br>    flavor_id          = string<br>    security_group_ids = optional(set(string), null)<br>    system_disk_type   = optional(string, null)<br>    system_disk_size   = optional(string, null)<br>    eip_id             = optional(string, null)<br>    subnet_id          = string<br><br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_ids"></a> [ecs\_ids](#output\_ecs\_ids) | Output ECS IDs |
