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
  dynamic "certificate_config" {
    for_each = var.certificate_config[*]
    iterator = cc
    content {
      cluster_certificate_mode             = cc.value.cluster_certificate_mode
      dashboard_certificate_mode           = cc.value.dashboard_certificate_mode
      open_search_api_certificate_id       = cc.value.open_search_api_certificate_id
      open_search_dashboard_certificate_id = cc.value.open_search_dashboard_certificate_id
    }
  }
  data_node_host_bare_metal_shape = var.data_node_host_bare_metal_shape
  data_node_host_shape            = var.data_node_host_shape
  defined_tags                    = var.defined_tags
  freeform_tags                   = var.freeform_tags
  inbound_cluster_ids             = var.inbound_cluster_ids
  dynamic "load_balancer_config" {
    for_each = var.load_balancer_config[*]
    iterator = lbc
    content {
      load_balancer_service_type          = lbc.value.load_balancer_service_type
      load_balancer_max_bandwidth_in_mbps = lbc.value.load_balancer_max_bandwidth_in_mbps
      load_balancer_min_bandwidth_in_mbps = lbc.value.load_balancer_min_bandwidth_in_mbps
    }
  }
  dynamic "maintenance_details" {
    for_each = var.maintenance_details[*]
    iterator = md
    content {
      notification_email_ids = md.value.notification_email_ids
    }
  }
  master_node_host_bare_metal_shape = var.master_node_host_bare_metal_shape
  master_node_host_shape            = var.master_node_host_shape
  ml_node_count                     = var.ml_node_count
  ml_node_host_memory_gb            = var.ml_node_host_memory_gb
  ml_node_host_ocpu_count           = var.ml_node_host_ocpu_count
  ml_node_host_shape                = var.ml_node_host_shape
  ml_node_host_type                 = var.ml_node_host_type
  ml_node_storage_gb                = var.ml_node_storage_gb
  nsg_id                            = var.nsg_id
  opendashboard_node_host_shape     = var.opendashboard_node_host_shape
  dynamic "outbound_cluster_config" {
    for_each = var.outbound_cluster_config[*]
    iterator = occ
    content {
      is_enabled = occ.value.is_enabled
      dynamic "outbound_clusters" {
        for_each = occ.value.outbound_clusters
        iterator = oc
        content {
          display_name        = oc.value.display_name
          seed_cluster_id     = oc.value.seed_cluster_id
          is_skip_unavailable = oc.value.is_skip_unavailable
          mode                = oc.value.mode
          ping_schedule       = oc.value.ping_schedule
        }
      }
    }
  }
  reverse_connection_endpoint_customer_ips = var.reverse_connection_endpoint_customer_ips
  search_node_count                        = var.search_node_count
  search_node_host_memory_gb               = var.search_node_host_memory_gb
  search_node_host_ocpu_count              = var.search_node_host_ocpu_count
  search_node_host_shape                   = var.search_node_host_shape
  search_node_host_type                    = var.search_node_host_type
  search_node_storage_gb                   = var.search_node_storage_gb
  security_attributes                      = var.security_attributes
  security_master_user_name                = var.security_master_user_name
  security_master_user_password_hash       = var.security_master_user_password_hash
  dynamic "security_saml_config" {
    for_each = var.security_saml_config[*]
    iterator = ssc
    content {
      is_enabled           = ssc.value.is_enabled
      idp_metadata_content = ssc.value.idp_metadata_content
      idp_entity_id        = ssc.value.idp_entity_id
      opendashboard_url    = ssc.value.opendashboard_url
      admin_backend_role   = ssc.value.admin_backend_role
      subject_key          = ssc.value.subject_key
      roles_key            = ssc.value.roles_key
    }
  }
  security_mode                      = var.security_mode
  system_tags                        = var.system_tags
  configure_outbound_cluster_trigger = var.configure_outbound_cluster_trigger
  upgrade_major_version_trigger      = var.upgrade_major_version_trigger
  timeouts {
    create = "45m"
    update = "45m"
    delete = "45m"
  }
}
