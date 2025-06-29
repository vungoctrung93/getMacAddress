Get-NetAdapter | Select-Object -Property Name, InterfaceDescription, MacAddress | ForEach-Object {
  Write-Host "Name: $($_.Name)"
  Write-Host "Interface: $($_.InterfaceDescription)"
  Write-Host "MAC address: $($_.MacAddress)"
  Write-Host ""
}
