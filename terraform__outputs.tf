output volumes {
    value = data.external.filter-volumes.result
}

output group_prefix {
    value = keys(tomap(data.external.filter-volumes.result))
}