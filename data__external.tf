data external filter-volumes {
    #
    # https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external
    #
    program = [
        "/usr/bin/env", "-S", "pkgx", "+jq^1.7", "+bash^5", "bash",
        "${path.module}/scripts/filter-volumes.pkgx"
    ]

    query = {
        inventory_file_path = local.inventory_file_path
        deployment_uuid = local.deployment_uuid
        cluster_prefix = local.cluster_prefix
        group_prefix = local.group_prefix
        volume_name = local.volume_name
    }
}