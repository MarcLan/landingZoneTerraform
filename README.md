<!-- BEGIN_TF_DOCS -->
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

- management: cts, eps, lts
- compute: ecsCount, ecsForEach
- network: er, sg, vpc
- storage: obs

## Examples

- management: eps
- network: vpc
- nonprod: cts, ecs, eps, er, lts, obs, sg, outputs, version
<!-- END_TF_DOCS -->