output volumes {
    value = data.external.filter-volumes.result
}

output group_prefix {
    value = keys(output.volumes)
}