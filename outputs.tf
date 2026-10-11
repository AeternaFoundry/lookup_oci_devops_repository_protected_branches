output "devops_repository_protected_branches_lookup_id" {
  description = "Map of id values across all devops_repository_protected_branches_lookup, keyed the same as var.devops_repository_protected_branches_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_devops_repository_protected_branches.devops_repository_protected_branches_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_repository_protected_branches_lookup_filter" {
  description = "Map of filter values across all devops_repository_protected_branches_lookup, keyed the same as var.devops_repository_protected_branches_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_devops_repository_protected_branches.devops_repository_protected_branches_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "devops_repository_protected_branches_lookup_name" {
  description = "Map of name values across all devops_repository_protected_branches_lookup, keyed the same as var.devops_repository_protected_branches_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_devops_repository_protected_branches.devops_repository_protected_branches_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "devops_repository_protected_branches_lookup_protected_branch_collection" {
  description = "Map of protected_branch_collection values across all devops_repository_protected_branches_lookup, keyed the same as var.devops_repository_protected_branches_lookup except keys with no protected_branch_collection are omitted"
  value       = { for k, v in data.oci_devops_repository_protected_branches.devops_repository_protected_branches_lookup : k => v.protected_branch_collection if v.protected_branch_collection != null && length(v.protected_branch_collection) > 0 }
}
output "devops_repository_protected_branches_lookup_repository_id" {
  description = "Map of repository_id values across all devops_repository_protected_branches_lookup, keyed the same as var.devops_repository_protected_branches_lookup except keys with no repository_id are omitted"
  value       = { for k, v in data.oci_devops_repository_protected_branches.devops_repository_protected_branches_lookup : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}

