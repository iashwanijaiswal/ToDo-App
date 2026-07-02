resource "azurerm_resource_group" "block1" {
  name     = "rg-sunny"
  location = "West US"

}

  resource "azurerm_resource_group" "block2" {
  name     = "rg-ashwani"
  location = "West US"

 
}
resource "azurerm_storage_account" "st1" {
  name                     = "stsunny"
  resource_group_name      = azurerm_resource_group.block1.name
  location                 = azurerm_resource_group.block1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}

resource "azurerm_storage_account" "st2" {
    depends_on = [azurerm_resource_group.block2]
  name                     = "stashwani"
  resource_group_name      = "rg-ashwani"
  location                 = "West US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}