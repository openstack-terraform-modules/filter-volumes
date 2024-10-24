variable get-volumes {
    type = object({
        deployment = object({
            id = string
            uuid = string
            tenant_name = string
            domain_name = string
        })
        inventory_file_path = string
        cluster_prefix = string
        volume_name = string
    })
}
/*
variable deployment {
    type = object({
      id = string
      uuid = string
      tenant_name = string
      domain_name = string
    })
}

variable inventory_file_path {
    type = string
}
*/

variable group_prefix {
    type = string
}

/*
variable volume_name {
    type = string
}
*/