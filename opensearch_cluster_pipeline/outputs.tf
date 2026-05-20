output "id" {
  description = "The OCID of the cluster pipeline."
  value       = oci_opensearch_opensearch_cluster_pipeline.this.id
}

output "state" {
  description = "The current state of the cluster backup."
  value       = oci_opensearch_opensearch_cluster_pipeline.this.state
}

output "time_created" {
  description = "The date and time the cluster pipeline was created. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_opensearch_opensearch_cluster_pipeline.this.time_created
}

output "time_updated" {
  description = "The amount of time in milliseconds since the pipeline was updated."
  value       = oci_opensearch_opensearch_cluster_pipeline.this.time_updated
}

output "opensearch_pipeline_private_ip" {
  description = "The pipeline's private IP address."
  value       = oci_opensearch_opensearch_cluster_pipeline.this.opensearch_pipeline_private_ip
}

output "opensearch_pipeline_fqdn" {
  description = "The fully qualified domain name (FQDN) for the cluster's API endpoint."
  value       = oci_opensearch_opensearch_cluster_pipeline.this.opensearch_pipeline_fqdn
}

output "pipeline_mode" {
  description = "The current state of the pipeline."
  value       = oci_opensearch_opensearch_cluster_pipeline.this.pipeline_mode
}
