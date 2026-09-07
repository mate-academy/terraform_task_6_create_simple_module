# Notes

The module was successfully published to the HCP Terraform Registry.

[Registry module](https://app.terraform.io/app/Alex_terr/registry/modules/private/Alex_terr/resource_group_storage/azurerm/1.0.0)

GitHub repository tag:
1.0.0

The root configuration uses the local module source:

`./modules/resource_group_storage`

This is intentional. The CI environment does not have authentication configured for the private HCP Terraform Registry. When the Registry source was used, CI failed with `401 Unauthorized`.

Because of that, the local source is used in the root configuration so CI can initialize and validate the module successfully.

The module itself was also successfully initialized locally from the HCP Terraform Registry using version `1.0.0`.