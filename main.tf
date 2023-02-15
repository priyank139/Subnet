resource "azurerm_subnet" "subnet" {
  count               = length(var.address_prefixes)  
  name                 = "ot_subnet-${count.index}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = element( var.virtual_network_name, count.index)
  address_prefixes       = [ element(var.address_prefixes, count.index) ]
 
}
