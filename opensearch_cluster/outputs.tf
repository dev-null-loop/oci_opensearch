output "id" {
  description = "The OCID of the cluster."
  value       = oci_opensearch_opensearch_cluster.this.id
}

output "private_ip" {
  description = "The cluster's private IP address."
  value       = oci_opensearch_opensearch_cluster.this.opensearch_private_ip
}
