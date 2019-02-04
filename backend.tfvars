
terraform {
  backend "azurerm" {
    storage_account_name  = "tstate3654"
    container_name        = "tstate"
    key                   = "terraformpipeline.tfstate"
     access_key = "+hBomVP78YgW33wGvkcIIQeLjM5aZcQiiVx6hbtK7xZUBJ7IGd4gdm8Vfzjj3QxQfim/qMuInMII2PRWxbJ3Eg=="
  }
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "tstate"
  location = "eastus"
}
