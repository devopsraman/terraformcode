# Configure the Microsoft Azure Provider
provider "azurerm" {
    subscription_id = "47aecb40-f45d-49a7-a070-7c748616ec94"
    client_id       = "64727e9b-469e-43fe-b859-ce6e872920a2"
    client_secret   = "11a49789-921f-4789-b22b-7d181e5d4ea2"
    tenant_id       = "6ed682dd-ec2d-43d7-a428-1f8b3749f210"
}

# Create a resource group if it doesn’t exist
resource "azurerm_resource_group" "myterraformgroup" {
    name     = "myResourceGroup"
    location = "eastus"

    tags {
        environment = "Terraform Demo"
    }
}

# Create virtual network
resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "myVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "eastus"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"

    tags {
        environment = "Terraform Demo"
    }
}
