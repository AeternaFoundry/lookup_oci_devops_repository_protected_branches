variable "devops_repository_protected_branches_lookup" {
  description = <<EOT
Map of devops_repository_protected_branches_lookup, attributes below
Required:
    - repository_id
Optional:
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    repository_id = string
    name          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

