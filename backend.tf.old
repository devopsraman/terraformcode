
terraform {
  backend "azurerm" {
    storage_account_name  = "tstate17799"
    container_name        = "tstate"
    key                   = "terraformpipeline.tfstate"
     access_key = "xdzjeeALDzcXB+8I+TejjnFjl3vwZ0y2nJzK4/pQPv/FYJuWw6ncqzbp+BhK3VYB5pevNRn3Pw35ClM13un/bw=="
  }
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "tstate"
  location = "eastus"
}
