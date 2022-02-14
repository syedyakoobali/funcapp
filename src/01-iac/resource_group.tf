 resource "azurerm_resource_group" "RG" {
   name     = "rg-wus-logicappsample-devc"
   location = var.location
 
   tags = {
     environment = var.environment
   }
 }
# resource "azurerm_resource_group" "RG1" {
#   name     = "rg-${local.prefix_lower}-${local.project_lower}-preprodshared-001"
#   location = var.location

#   tags = {
#       environment = var.environment
#   }
# }
