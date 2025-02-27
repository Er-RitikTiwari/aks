variable "resource_group_name" {
  description = "The name of the Azure resource group"
  type        = string
  default     = "trial-aks"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "australiacentral"
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "ritik-cluster"
}

variable "kubernetes_version" {
  description = "Kubernetes version for the cluster"
  type        = string
  default     = "1.31.5"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size for AKS worker nodes"
  type        = string
  default     = "Standard_D2_v2"
}

