resource "oci_opensearch_opensearch_cluster_pipeline" "this" {
  compartment_id                  = var.compartment_id
  data_prepper_configuration_body = var.data_prepper_configuration_body
  display_name                    = var.display_name
  memory_gb                       = var.memory_gb
  node_count                      = var.node_count
  ocpu_count                      = var.ocpu_count
  pipeline_configuration_body     = var.pipeline_configuration_body
  defined_tags                    = var.defined_tags
  freeform_tags                   = var.freeform_tags
  node_shape                      = var.node_shape
  nsg_id                          = var.nsg_id
  opc_dry_run                     = var.opc_dry_run
  dynamic "reverse_connection_endpoints" {
    for_each = var.reverse_connection_endpoints
    iterator = rce
    content {
      customer_fqdn = rce.value.customer_fqdn
      customer_ip   = rce.value.customer_ip
    }
  }
  subnet_compartment_id = var.subnet_compartment_id
  subnet_id             = var.subnet_id
  vcn_compartment_id    = var.vcn_compartment_id
  vcn_id                = var.vcn_id
  timeouts {
    create = "45m"
    update = "45m"
    delete = "45m"
  }
}
