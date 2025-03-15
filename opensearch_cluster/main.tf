resource "oci_opensearch_opensearch_cluster" "this" {
  compartment_id                     = var.compartment_id
  data_node_count                    = var.data_node_count
  data_node_host_memory_gb           = var.data_node_host_memory_gb
  data_node_host_ocpu_count          = var.data_node_host_ocpu_count
  data_node_host_type                = var.data_node_host_type
  data_node_storage_gb               = var.data_node_storage_gb
  display_name                       = var.display_name
  master_node_count                  = var.master_node_count
  master_node_host_memory_gb         = var.master_node_host_memory_gb
  master_node_host_ocpu_count        = var.master_node_host_ocpu_count
  master_node_host_type              = var.master_node_host_type
  opendashboard_node_count           = var.opendashboard_node_count
  opendashboard_node_host_memory_gb  = var.opendashboard_node_host_memory_gb
  opendashboard_node_host_ocpu_count = var.opendashboard_node_host_ocpu_count
  software_version                   = var.software_version
  subnet_compartment_id              = var.subnet_compartment_id
  subnet_id                          = var.subnet_id
  vcn_compartment_id                 = var.vcn_compartment_id
  vcn_id                             = var.vcn_id
  data_node_host_bare_metal_shape    = var.data_node_host_bare_metal_shape
  defined_tags                       = var.defined_tags
  freeform_tags                      = var.freeform_tags

  inbound_cluster_ids = var.inbound_cluster_ids
  dynamic "maintenance_details" {
    for_each = var.maintenance_details[*]
    iterator = md
    content {
      notification_email_ids = md.value.notification_email_ids
    }
  }

  master_node_host_bare_metal_shape = var.master_node_host_bare_metal_shape
  dynamic "outbound_cluster_config" {
    for_each = var.outbound_cluster_config[*]
    ierator  = occ
    content {
      is_enabled = occ.value.is_enabled
      outbound_clusters {
	display_name        = occ.value.outbound_clusters.display_name
	seed_cluster_id     = occ.value.outbound_clusters.seed_cluster.id
	is_skip_unavailable = occ.value.outbound_clusters.is_skip_unavailable
	mode                = occ.value.outbound_clusters.mode
	ping_schedule       = occ.value.outbound_clusters.ping_schedule
      }
    }
  }
  reverse_connection_endpoint_customer_ips = var.opensearch_cluster_reverse_connection_endpoint_customer_ips
  security_master_user_name                = var.security_master_user_name
  security_master_user_password_hash       = var.security_master_user_password_hash
  security_mode                            = var.security_mode
  system_tags                              = var.system_tags
  timeouts {
    create = "30m"
    update = "5m"
    delete = "20m"
  }
}
