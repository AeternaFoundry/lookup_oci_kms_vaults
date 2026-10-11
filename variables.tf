variable "kms_vaults_lookup" {
  description = <<EOT
Map of kms_vaults_lookup, attributes below
Required:
    - compartment_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

