#####################################################################################
#
# Microsoft occasionally sends and email when an application certificate is about to
# expire.  This script helps find expiring certificates and display them in a report.
#
#####################################################################################
# Requires: Microsoft.Graph PowerShell SDK
# Install if needed:
# Install-Module Microsoft.Graph -Scope CurrentUser

# Connect with least-privilege read permissions to enumerate service principals
# Connect-MgGraph -Scopes "Application.Read.All","Directory.Read.All"

# Optional: If your tenant enforces CA or you need beta-only properties, uncomment next line.
# Select-MgProfile -Name "beta"

# Get all Enterprise Apps configured for SAML SSO and show notification email addresses
$apps = Get-MgServicePrincipal -All -Filter "preferredSingleSignOnMode eq 'saml'" `
            -Property "id,displayName,preferredSingleSignOnMode,notificationEmailAddresses,keyCredentials"

$appsSorted = $apps |
  Select-Object id, displayName, preferredSingleSignOnMode, notificationEmailAddresses,
    @{n='EarliestCertExpiry'; e= { ($_.KeyCredentials | ForEach-Object {[datetime]$_.EndDateTime} | Sort-Object | Select-Object -First 1) } } |
  Sort-Object EarliestCertExpiry


# Prepare output
$results = foreach ($app in $appsSorted) {
    # Extract certificate expiration dates from keyCredentials
    $certExpirations = $app.KeyCredentials | Where-Object { $_.Type -eq "AsymmetricX509Cert" } |
                       Select-Object -ExpandProperty EndDateTime

    [PSCustomObject]@{
        AppName                = $app.DisplayName
        ServicePrincipalId     = $app.Id
        NotificationEmails     = if ($app.NotificationEmailAddresses) { $app.NotificationEmailAddresses -join "; " } else { "" }
        CertificateExpirations = $app.EarliestCertExpiry # if ($certExpirations) { ($certExpirations | Sort-Object | ForEach-Object { $_.ToString("yyyy-MM-dd") }) -join "; " } else { "None" }
    }
}

# Display in table
$results | Format-Table -AutoSize
