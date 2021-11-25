$net =@{
    Name = 'VNET-Network-Hands-on-Lab'
    ResourceGroupName = 'Network-Hands-on-Lab'
}
$vnet = Get-AzVirtualNetwork @net

($vnet | Select -ExpandProperty subnets | Where-Object {$_.Name -eq 'SNET-Network-Hands-on-Lab'}).PrivateEndpointNetworkPolicies = "Enabled"

$vnet | Set-AzVirtualNetwork