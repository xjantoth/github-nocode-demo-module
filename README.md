<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_buckets"></a> [buckets](#module\_buckets) | github.com/GoogleCloudPlatform/cloud-foundation-fabric//modules/gcs | v34.1.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_TFC_VAULT_ADDR"></a> [TFC\_VAULT\_ADDR](#input\_TFC\_VAULT\_ADDR) | Address of the Vault instance to authenticate against | `string` | `"https://vault.net"` | no |
| <a name="input_TFC_VAULT_BACKED_GCP_AUTH"></a> [TFC\_VAULT\_BACKED\_GCP\_AUTH](#input\_TFC\_VAULT\_BACKED\_GCP\_AUTH) | Enables vault backed dynamic credentials with GCP | `string` | `true` | no |
| <a name="input_TFC_VAULT_BACKED_GCP_AUTH_TYPE"></a> [TFC\_VAULT\_BACKED\_GCP\_AUTH\_TYPE](#input\_TFC\_VAULT\_BACKED\_GCP\_AUTH\_TYPE) | Specifies the type of authentication to perform with GCP | `string` | `"static_account/service_account_key"` | no |
| <a name="input_TFC_VAULT_BACKED_GCP_MOUNT_PATH"></a> [TFC\_VAULT\_BACKED\_GCP\_MOUNT\_PATH](#input\_TFC\_VAULT\_BACKED\_GCP\_MOUNT\_PATH) | The mount path of the GCP secrets engine in Vault. | `string` | `"gcp-egdev-aut"` | no |
| <a name="input_TFC_VAULT_BACKED_GCP_RUN_VAULT_STATIC_ACCOUNT"></a> [TFC\_VAULT\_BACKED\_GCP\_RUN\_VAULT\_STATIC\_ACCOUNT](#input\_TFC\_VAULT\_BACKED\_GCP\_RUN\_VAULT\_STATIC\_ACCOUNT) | The name of the static account in Vault. | `string` | `"..."` | no |
| <a name="input_TFC_VAULT_PROVIDER_AUTH"></a> [TFC\_VAULT\_PROVIDER\_AUTH](#input\_TFC\_VAULT\_PROVIDER\_AUTH) | enables TFE Vault Provider authentication | `string` | `true` | no |
| <a name="input_TFC_VAULT_RUN_ROLE"></a> [TFC\_VAULT\_RUN\_ROLE](#input\_TFC\_VAULT\_RUN\_ROLE) | The name of the Vault role to authenticate against | `string` | `"..."` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"prod"` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | label for bucket | `map(string)` | <pre>{<br/>  "demo": "true",<br/>  "environment": "dev",<br/>  "name": "nocode"<br/>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"europe-west3"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `"deaut"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `string` | n/a | yes |
| <a name="input_storage_class"></a> [storage\_class](#input\_storage\_class) | n/a | `string` | `"STANDARD"` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_buckets"></a> [buckets](#output\_buckets) | Created buckets |
<!-- END_TF_DOCS -->
