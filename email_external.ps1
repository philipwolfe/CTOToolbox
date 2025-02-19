# https://techcommunity.microsoft.com/blog/exchange/native-external-sender-callouts-on-email-in-outlook/2250098
# https://learn.microsoft.com/en-us/powershell/module/exchange/set-externalinoutlook?view=exchange-ps#examples
#Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline
Set-ExternalInOutlook -Enabled $true
