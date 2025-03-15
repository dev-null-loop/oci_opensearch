variable "compartment_id" {
  description = "(Required) The OCID of the compartment to create the cluster in."
  type        = string
}

variable "data_node_count" {
  description = "(Required) (Updatable) The number of data nodes to configure for the cluster."
  type        = number
}

variable "data_node_host_bare_metal_shape" {
  description = "(Optional) The bare metal shape for the cluster's data nodes."
  type        = string
}

variable "data_node_host_memory_gb" {
  description = "(Required) (Updatable) The amount of memory in GB, to configure per node for the cluster's data nodes."
  type        = number
  validation {
    condition     = !(var.data_node_host_memory_gb < 20)
    error_message = "Error: Data Node Host Memory GB fell behind limit"
  }
}

variable "data_node_host_ocpu_count" {
  description = "(Required) (Updatable) The number of OCPUs to configure for the cluster's data nodes."
  type        = number
}

variable "data_node_host_type" {
  description = "(Required) TThe instance type for the cluster's data nodes."
  type        = string
}

variable "data_node_storage_gb" {
  description = "(Required) (Updatable) The amount of storage in GB, to configure per node for the cluster's data nodes."
  type        = number
  validation {
    condition     = !(var.data_node_storage_gb < 50)
    error_message = "Error: Data Node Storage GB fell behind limit"
  }
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) The name of the cluster. Avoid entering confidential information."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  type        = map(string)
  default     = {}
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

variable "master_node_host_type" {
  description = "(Required) The instance type for the cluster's master nodes."
  type        = string
}

variable "opendashboard_node_count" {
  description = "(Required) (Updatable) The number of OpenSearch Dashboard nodes to configure for the cluster."
  type        = number
}

variable "opendashboard_node_host_memory_gb" {
  description = "(Required) (Updatable) The amount of memory in GB, to configure for the cluster's OpenSearch Dashboard nodes."
  type        = number
  validation {
    condition     = !(var.opendashboard_node_host_memory_gb < 8)
    error_message = "Error: Opendashboard Node Host Memory GB fell behind limit"
  }
}

variable "opendashboard_node_host_ocpu_count" {
  description = "(Required) (Updatable) The number of OCPUs to configure for the cluster's OpenSearch Dashboard nodes."
  type        = number
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
  description = "(Optional) Usage of system tag keys. These predefined keys are scoped to namespaces."
  type        = map(string)
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

variable "inbound_cluster_ids" {
  description = "(Optional) List of inbound clusters that will be queried using cross cluster search"
  type        = list(string)
  default     = []
}

variable "maintenance_details" {
  description = "(Optional) (Updatable) Details for creation of maintenance details"
  type = object({
    notification_email_ids = optional(list(string))
  })
  default = null
}

variable "outbound_cluster_config" {
  description = "(Optional) (Updatable) This configuration is used for passing request details to connect outbound cluster(s) to the inbound cluster (coordinating cluster)"
  type = object({
    is_enabled = bool
    outbound_clusters = object({
      display_name        = string
      is_skip_unavailable = optional(bool)
      mode                = optional(string)
      ping_schedule       = optional(string)
      seed_cluster_id     = string
    })
  })
  default = null
}

variable "reverse_connection_endpoint_customer_ips" {
  description = "(Optional) (Updatable) The customer IP addresses of the endpoint in customer VCN"
  type        = list(string)
  default     = []
}
