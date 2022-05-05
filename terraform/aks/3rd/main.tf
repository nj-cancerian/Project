terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "k8s"
  location = "japaneast"
   tags = {
    environment = "Demo"
  }
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "my-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "my-aks"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  
}
 service_principal {
    client_id     = var.appId
    client_secret = var.password
  }
}
