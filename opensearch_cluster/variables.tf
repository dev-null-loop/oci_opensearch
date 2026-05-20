variable "certificate_config" {
  description = <<-EOT
  (Optional) (Updatable) Custom certificate config for customer provided certs.
	* `cluster_certificate_mode` - (Optional) (Updatable) Specifies whether the certificate to be used in cluster is managed by OpenSearch or Oracle Cloud Infrastructure Certificates service.
	* `dashboard_certificate_mode` - (Optional) (Updatable) Specifies whether the certificate to be used in dashboard is managed by OpenSearch or Oracle Cloud Infrastructure Certificates service.
	* `open_search_api_certificate_id` - (Optional) (Updatable) certificate to be used for OpenSearch cluster api communication
	* `open_search_dashboard_certificate_id` - (Optional) (Updatable) certificate to be used for OpenSearch dashboard api communication
  EOT
  type = object({
    cluster_certificate_mode             = optional(string)
    dashboard_certificate_mode           = optional(string)
    open_search_api_certificate_id       = optional(string)
    open_search_dashboard_certificate_id = optional(string)
  })
  default = null
}

variable "compartment_id" {
  description = "(Required) The OCID of the compartment to create the cluster in."
  type        = string
}

variable "configure_outbound_cluster_trigger" {
  description = "(Optional) (Updatable) An optional property when incremented triggers Configure Outbound Cluster. Could be set to any integer value."
  type        = number
  default     = null
}

variable "data_node_count" {
  description = "(Required) (Updatable) The number of data nodes to configure for the cluster."
  type        = number
}

variable "data_node_host_bare_metal_shape" {
  description = "(Optional) The bare metal shape for the cluster's data nodes."
  type        = string
  default     = null
}

variable "data_node_host_memory_gb" {
  description = "(Required) (Updatable) The amount of memory in GB, to configure per node for the cluster's data nodes."
  type        = number
}

variable "data_node_host_ocpu_count" {
  description = "(Required) (Updatable) The number of OCPUs to configure for the cluster's data nodes."
  type        = number
}

variable "data_node_host_shape" {
  description = "(Optional) (Updatable) The node shape for the cluster's data nodes."
  type        = string
  default     = null
}

variable "data_node_host_type" {
  description = "(Required) TThe instance type for the cluster's data nodes."
  type        = string
}

variable "data_node_storage_gb" {
  description = "(Required) (Updatable) The amount of storage in GB, to configure per node for the cluster's data nodes."
  type        = number
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) The name of the cluster. Avoid entering confidential information."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}` "
  type        = map(string)
  default     = {}
}

variable "inbound_cluster_ids" {
  description = "(Optional) List of inbound clusters that will be queried using cross cluster search"
  type        = list(string)
  default     = []
}

variable "load_balancer_config" {
  description = <<-EOT
  (Optional) (Updatable) This config is used to choose the load balancer service and bandwidth for OpenSearch and OpenDashboard load balancers.
	* `load_balancer_max_bandwidth_in_mbps` - (Optional) (Updatable) Maximum bandwidth (Mbps) of OpenSearch load balancer. Not applicable for network load balancer service.
	* `load_balancer_min_bandwidth_in_mbps` - (Optional) (Updatable) Minimum bandwidth (Mbps) of OpenSearch load balancer. Not applicable for network load balancer service.
	* `load_balancer_service_type` - (Required) (Updatable) Load balancer service for OpenSearch and OpenDashboard load balancer. Default value is LOAD_BALANCER.
  EOT
  type = object({
    load_balancer_service_type          = string
    load_balancer_max_bandwidth_in_mbps = optional(number)
    load_balancer_min_bandwidth_in_mbps = optional(number)
  })
  default = null
}

variable "maintenance_details" {
  description = <<-EOT
  (Optional) (Updatable) Details for creation of maintenance details
	* `notification_email_ids` - (Optional) (Updatable) The Email IDs given by the customer to get notified about maintenance activities
  EOT
  type = object({
    notification_email_ids = optional(list(string))
  })
  default = null
}

variable "master_node_count" {
  description = "(Required) (Updatable) The number of master nodes to configure for the cluster."
  type        = number
}

variable "master_node_host_bare_metal_shape" {
  description = "(Optional) The bare metal shape for the cluster's master nodes."
  type        = string
  default     = null
}

variable "master_node_host_memory_gb" {
  description = "(Required) (Updatable) The amount of memory in GB, to configure per node for the cluster's master nodes."
  type        = number
}

variable "master_node_host_ocpu_count" {
  description = "(Required) (Updatable) The number of OCPUs to configure for the cluser's master nodes."
  type        = number
}

variable "master_node_host_shape" {
  description = "(Optional) (Updatable) The node shape for the cluster's master nodes."
  type        = string
  default     = null
}

variable "master_node_host_type" {
  description = "(Required) The instance type for the cluster's master nodes."
  type        = string
}

variable "ml_node_count" {
  description = "(Optional) (Updatable) The number of ML nodes configured for the cluster."
  type        = number
  default     = null
}

variable "ml_node_host_memory_gb" {
  description = "(Optional) (Updatable) The amount of memory in GB, for the cluster's ML nodes."
  type        = number
  default     = null
}

variable "ml_node_host_ocpu_count" {
  description = "(Optional) (Updatable) The number of OCPUs configured for the cluster's ML nodes."
  type        = number
  default     = null
}

variable "ml_node_host_shape" {
  description = "(Optional) (Updatable) The node shape for the cluster's ML nodes."
  type        = string
  default     = null
}

variable "ml_node_host_type" {
  description = "(Optional) The instance type for the cluster's ML nodes."
  type        = string
  default     = null
}

variable "ml_node_storage_gb" {
  description = "(Optional) (Updatable) The amount of storage in GB, to configure per node for the cluster's ML nodes."
  type        = number
  default     = null
}

variable "nsg_id" {
  description = "(Optional) The OCID of the NSG where the private endpoint vnic will be attached."
  type        = string
  default     = null
}

variable "opendashboard_node_count" {
  description = "(Required) (Updatable) The number of OpenSearch Dashboard nodes to configure for the cluster."
  type        = number
}

variable "opendashboard_node_host_memory_gb" {
  description = "(Required) (Updatable) The amount of memory in GB, to configure for the cluster's OpenSearch Dashboard nodes."
  type        = number
}

variable "opendashboard_node_host_ocpu_count" {
  description = "(Required) (Updatable) The number of OCPUs to configure for the cluster's OpenSearch Dashboard nodes."
  type        = number
}

variable "opendashboard_node_host_shape" {
  description = "(Optional) (Updatable) The node shape for the cluster's OpenSearch Dashboard nodes."
  type        = string
  default     = null
}

variable "outbound_cluster_config" {
  description = <<-EOT
  (Optional) (Updatable) This configuration is used for passing request details to connect outbound cluster(s) to the inbound cluster (coordinating cluster)
	* `is_enabled` - (Required) (Updatable) Flag to indicate whether outbound cluster configuration is enabled
	* `outbound_clusters` - (Required) (Updatable) List of outbound clusters to be connected to the inbound cluster
		* `display_name` - (Required) (Updatable) Name of the Outbound cluster. Avoid entering confidential information.
		* `is_skip_unavailable` - (Optional) (Updatable) Flag to indicate whether to skip the Outbound cluster during cross cluster search, if it is unavailable
		* `mode` - (Optional) (Updatable) Mode for the cross cluster connection
		* `ping_schedule` - (Optional) (Updatable) Sets the time interval between regular application-level ping messages that are sent to try and keep outbound cluster connections alive. If set to -1, application-level ping messages to this outbound cluster are not sent. If unset, application-level ping messages are sent according to the global transport.ping_schedule setting, which defaults to -1 meaning that pings are not sent.
		* `seed_cluster_id` - (Required) (Updatable) OCID of the Outbound cluster
  EOT
  type = object({
    is_enabled = bool
    outbound_clusters = list(object({
      display_name        = string
      seed_cluster_id     = string
      is_skip_unavailable = optional(bool)
      mode                = optional(string)
      ping_schedule       = optional(string)
    }))
  })
  default = null
}

variable "reverse_connection_endpoint_customer_ips" {
  description = "(Optional) (Updatable) The customer IP addresses of the endpoint in customer VCN"
  type        = list(string)
  default     = []
}

variable "search_node_count" {
  description = "(Optional) (Updatable) The number of search nodes configured for the cluster."
  type        = number
  default     = null
}

variable "search_node_host_memory_gb" {
  description = "(Optional) (Updatable) The amount of memory in GB, for the cluster's search nodes."
  type        = number
  default     = null
}

variable "search_node_host_ocpu_count" {
  description = "(Optional) (Updatable) The number of OCPUs configured for the cluster's search nodes."
  type        = number
  default     = null
}

variable "search_node_host_shape" {
  description = "(Optional) (Updatable) The node shape for the cluster's search nodes."
  type        = string
  default     = null
}

variable "search_node_host_type" {
  description = "(Optional) The instance type for the cluster's search nodes."
  type        = string
  default     = null
}

variable "search_node_storage_gb" {
  description = "(Optional) (Updatable) The amount of storage in GB, to configure per node for the cluster's search nodes."
  type        = number
  default     = null
}

variable "security_attributes" {
  description = "(Optional) (Updatable) Security attributes for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Oracle-ZPR\": {\"MaxEgressCount\": {\"value\": \"42\", \"mode\": \"enforce\"}}}` "
  type        = map(string)
  default     = null
}

variable "security_master_user_name" {
  description = "(Optional) (Updatable) The name of the master user that are used to manage security config"
  type        = string
  default     = null
}

variable "security_master_user_password_hash" {
  description = "(Optional) (Updatable) The password hash of the master user that are used to manage security config"
  type        = string
  default     = null
}

variable "security_mode" {
  description = "(Optional) (Updatable) The security mode of the cluster."
  type        = string
  default     = null
}

variable "security_saml_config" {
  description = <<-EOT
  (Optional) SAML policy is optionally used for Opensearch cluster to config SAML authentication
	* `is_enabled` - A flag determine whether SAML is enabled
	* `idp_metadata_content` - The content of identity provider metadata
	* `idp_entity_id` - The unique name for a identity provider entity
	* `opendashboard_url` - The endpoint of opendashboard
	* `admin_backend_role` - The backend role of admins who have all permissions like local master user
	* `subject_key` - The subject key is used to get username from SAML assertion. By default, it is NameID
	* `roles_key` - The roles key is sued to get backend roles from SAML assertion
  EOT
  type = object({
    is_enabled           = bool
    idp_metadata_content = string
    idp_entity_id        = string
    opendashboard_url    = optional(string)
    admin_backend_role   = optional(string)
    subject_key          = optional(string)
    roles_key            = optional(string)
  })
  default = null
}

variable "software_version" {
  description = "(Required) (Updatable) The version of the software the cluster is running."
  type        = string
}

variable "subnet_compartment_id" {
  description = "(Required) The OCID for the compartment where the cluster's subnet is located."
  type        = string
}

variable "subnet_id" {
  description = "(Required) The OCID of the cluster's subnet."
  type        = string
}

variable "system_tags" {
  description = "(Optional) Usage of system tag keys. These predefined keys are scoped to namespaces. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  type        = map(string)
  default     = null
}

variable "upgrade_major_version_trigger" {
  description = "(Optional) An optional property to upgrade the major version of the cluster. This workflow upgrades the cluster without creating a clone. If you want to create a clone and upgrade the clone for testing please use SDK or CLI."
  type        = number
  default     = null
}

variable "vcn_compartment_id" {
  description = "(Required) The OCID for the compartment where the cluster's VCN is located."
  type        = string
}

variable "vcn_id" {
  description = "(Required) The OCID of the cluster's VCN."
  type        = string
}
