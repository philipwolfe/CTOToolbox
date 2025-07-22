#https://connectioncloudsupport.zendesk.com/hc/en-us/articles/360053710693-Office-365-Bulk-Assign-Remove-Licenses-and-Apps
Install-Module -Name MSOnline
Connect-MSOLService
Get-Msolgroup #get object id
Get-MSOLAccountSKU #get the sku

#remove apps:
(Get-MsolAccountSku | where {$_.AccountSkuId -eq "<AccountSkuId>"}).ServiceStatus
$LO = New-MsolLicenseOptions -AccountSkuId <AccountSkuId> -DisabledPlans "<UndesirableService1>"
Get-MsolGroupMember -GroupObjectId 118fc6a6-c8c2-45bc-900e-8cabb9fcc5ef -All | foreach {Set-MsolUser -Objectid $_.objectid -UsageLocation "US"; Set-MsolUserLicense -Objectid $_.objectid -LicenseOptions $LO -ErrorAction SilentlyContinue}