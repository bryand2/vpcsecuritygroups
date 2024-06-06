
variable ibmcloud_api_key {
  description   = "The IBM Cloud platform API key needed to deploy IAM enabled resources."
  type          = string
  default       = ""
}

variable region {
    description = "IBM Cloud region where all resources will be deployed."
    type        = string
    default     = "us-south"
}

variable resource_group {
    description = "Name of resource group to create VPC."
    type        = string
    default     = "default"
}

variable vpc_name {
    description = "Name of vpc to associate security group to."
    type        = string
    default     = "bryand-vpc"
}

variable security_group_name {
    description = "Name of the security group"
    type        = string
    default     = "akamai-sg"
}

variable lb_name {
    description = "Name of the vpc load balancer to attach security group to"
    type        = string
    default     = "bd-lb1"
}


