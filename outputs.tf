output "kms_vaults_lookup_id" {
  description = "Map of id values across all kms_vaults_lookup, keyed the same as var.kms_vaults_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_kms_vaults.kms_vaults_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_vaults_lookup_compartment_id" {
  description = "Map of compartment_id values across all kms_vaults_lookup, keyed the same as var.kms_vaults_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_kms_vaults.kms_vaults_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "kms_vaults_lookup_filter" {
  description = "Map of filter values across all kms_vaults_lookup, keyed the same as var.kms_vaults_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_kms_vaults.kms_vaults_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "kms_vaults_lookup_vaults" {
  description = "Map of vaults values across all kms_vaults_lookup, keyed the same as var.kms_vaults_lookup except keys with no vaults are omitted"
  value       = { for k, v in data.oci_kms_vaults.kms_vaults_lookup : k => v.vaults if v.vaults != null && length(v.vaults) > 0 }
}

