variable "compartment_id" {
  description = "(Required) The OCID of the compartment to create the pipeline in."
  type        = string
}

variable "data_prepper_configuration_body" {
  description = "(Required) (Updatable) The data prepper config in YAML format. The command accepts the data prepper config as a string or within a .yaml file. If you provide the configuration as a string, each new line must be escaped with \\."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}` "
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) The name of the cluster pipeline. Avoid entering confidential information."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}` "
  type        = map(string)
  default     = {}
}

variable "memory_gb" {
  description = "(Required) (Updatable) The amount of memory in GB, for each pipeline node."
  type        = number
}

variable "node_count" {
  description = "(Required) (Updatable) The number of nodes configured for the pipeline."
  type        = number
}

variable "node_shape" {
  description = "(Optional) (Updatable) The pipeline node shape."
  type        = string
  default     = null
}

variable "nsg_id" {
  description = "(Optional) (Updatable) The OCID of the NSG where the pipeline private endpoint vnic will be attached."
  type        = string
  default     = null
}

variable "ocpu_count" {
  description = "(Required) (Updatable) The number of OCPUs configured for each pipeline node."
  type        = number
}

variable "opc_dry_run" {
  description = "(Optional) (Updatable) Indicates that the request is a dry run, if set to \"true\". A dry run request does not modify the configuration item details and is used only to perform validation on the submitted data. "
  type        = bool
  default     = null
}

variable "pipeline_configuration_body" {
  description = "(Required) (Updatable) The pipeline configuration in YAML format. The command accepts the pipeline configuration as a string or within a .yaml file. If you provide the configuration as a string, each new line must be escaped with \\."
  type        = string
}

variable "reverse_connection_endpoints" {
  description = <<-EOT
  (Optional) (Updatable) The customer IP and the corresponding fully qualified domain name that the pipeline will connect to.
	* `customer_fqdn` - (Required) (Updatable) The fully qualified domain name of the customerIp in the customer VCN
	* `customer_ip` - (Required) (Updatable) The IPv4 address in the customer VCN
  EOT
  type = list(object({
    customer_fqdn = string
    customer_ip   = string
  }))
  default = []
}

variable "subnet_compartment_id" {
  description = "(Optional) (Updatable) The OCID for the compartment where the pipeline's subnet is located."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "(Optional) (Updatable) The OCID of the pipeline's subnet."
  type        = string
  default     = null
}

variable "vcn_compartment_id" {
  description = "(Optional) (Updatable) The OCID for the compartment where the pipeline's VCN is located."
  type        = string
  default     = null
}

variable "vcn_id" {
  description = "(Optional) (Updatable) The OCID of the pipeline's VCN."
  type        = string
  default     = null
}
