data "oci_devops_repository_protected_branches" "devops_repository_protected_branches_lookup" {
  for_each = var.devops_repository_protected_branches_lookup

  repository_id = each.value.repository_id
  name          = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

