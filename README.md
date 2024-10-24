# filter-volumes

```hcl
module deployment {
    source = "git::https://github.com/openstack-terraform-modules/deployment.git"
    deployment_file_path = abspath("../../deployment.json")
}

module get-volumes {
    source = "git::https://github.com/openstack-terraform-modules/get-volumes.git"
    deployment = module.deployment.outputs
}

module filter-volumes {
    source = "git::https://github.com/openstack-terraform-modules/filter-volumes.git"

    inventory_file_path = module.get-volumes.inventory_file_path

    for_each = toset([ "manager", "compute" ])

    cluster_prefix = "kube"
    group_prefix = each.key
    volume_name = "data"
}
```
