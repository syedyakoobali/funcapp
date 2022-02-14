function ImportTerraform {


$state = terraform state list
if ($state -like 'azurerm_network_security_group.nsg') {
    Write-Host "Resources have already been imported!"
}
else {
    terraform import "azurerm_network_security_group.nsg" "/subscriptions/62fc774d-0a88-43f6-bb4d-4c4dad3ab427/resourceGroups/rg-dbc-pi-prod-001/providers/Microsoft.Network/networkSecurityGroups/dbc-pi-nsg-prod-01"
}

}