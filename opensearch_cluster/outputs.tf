output "id" {
  description = "The OCID of the cluster."
  value       = oci_opensearch_opensearch_cluster.this.id
}

output "state" {
  description = "The current state of the cluster."
  value       = oci_opensearch_opensearch_cluster.this.state
}

output "time_created" {
  description = "The amount of time in milliseconds since the cluster was created."
  value       = oci_opensearch_opensearch_cluster.this.time_created
}

output "time_updated" {
  description = "The amount of time in milliseconds since the cluster was updated."
  value       = oci_opensearch_opensearch_cluster.this.time_updated
}

output "lifecycle_details" {
  description = "Additional information about the current lifecycle state of the cluster."
  value       = oci_opensearch_opensearch_cluster.this.lifecycle_details
}

output "opensearch_private_ip" {
  description = "The cluster's private IP address."
  value       = oci_opensearch_opensearch_cluster.this.opensearch_private_ip
}

output "opensearch_fqdn" {
  description = "The fully qualified domain name (FQDN) for the cluster's API endpoint."
  value       = oci_opensearch_opensearch_cluster.this.opensearch_fqdn
}

output "opendashboard_private_ip" {
  description = "The private IP address for the cluster's OpenSearch Dashboard."
  value       = oci_opensearch_opensearch_cluster.this.opendashboard_private_ip
}

output "opendashboard_fqdn" {
  description = "The fully qualified domain name (FQDN) for the cluster's OpenSearch Dashboard API endpoint."
  value       = oci_opensearch_opensearch_cluster.this.opendashboard_fqdn
}

output "total_storage_gb" {
  description = "The size in GB of the cluster's total storage."
  value       = oci_opensearch_opensearch_cluster.this.total_storage_gb
}
