terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.90.0"
    }
  }

}

provider "azurerm" {
  features {}
}

module "modules" {
  source = "./modules"
  resource_group_name  = "trial-aks"
  location            = "australiacentral"
  cluster_name        = "ritik-cluster"
  kubernetes_version  = "1.30.0"
  node_count          = 1
  vm_size             = "Standard_D2_v2"
}
