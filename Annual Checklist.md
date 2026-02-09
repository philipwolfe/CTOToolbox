# January is Registrar/DNS month
Start the year off right by sending valid email and cleaning out old DNS records.
- Validate DMARC Information
  - Use [Learn and Test DMARC](https://www.learndmarc.com/) as a quick check.
  - Use [SPF Record Checker and Lookup](https://easydmarc.com/tools/spf-lookup) to view SPF errors.
  - Use [Domain Security Scanner & Analyzer](https://easydmarc.com/tools/domain-scanner) to view DMARC warnings.
  - Review [r/DMARC](https://www.reddit.com/r/DMARC) to keep up on the latest happenings.
  - Check your SPF TXT record at your Domain Registrar to cull any hosts that don't send email on your behalf.
- Cull old DNS TXT entries
  - Some service providers perform one-time domain ownership validations.  Check the domain validation documentation for these companies to see if the record is used for validation periodically.  If it is not used, remove these entries so that your DNS records aren't broadcasting the services that your company uses.  This can be a security risk as attackers can target your known service providers.
- Validate registrar credentials.  Rotate credentials if applicable.  
- Set calendar reminders for domains expiring this year.
- Validate ownership transfer locks.
- Validate contact information.  Remember that changing registration information may prevent transfers for up to 60 days.

# Feburary is Internet Presence month
- Website
  - Scan sites for HTML validity and ADA accessibility.
  - Review cookie opt-in and tracking services/policies.
  - Review how your site appears in the top 5 search engines.
- Social Media
  - Review how your company appears in Facebook, X, Instagram, LinkedIn, etc.
- Company  Information
  - Review Maps for address/hours/contact info: Google, Apple, Bing
- Company Review Information
  - Review Glassdoor
  - Review Google Business/Yelp

# March is Communications Infrastructure month
- Review firewall policies
  - Inbound rules - are they up to date and documented well?  Are there countries to geo-block/allow?
- Test firewall policies
  - Allowed tests: Use an IP address that should be allowed to access the resource and validate.
  - Denied tests: Use an IP address that should be denied access to the resource and validate.
- Phone/FAX
  - Test E911 service by dialing 922 and confirming address and call back number are correct.
  - Review SIP trunk settings, private keys/client ids
  - Review PBX settings, users, backups
- Video Converencing
  - Review accounts, security, AI settings, SCIM provisioning, etc.

# April is Annual Review month
- People want to know if they are hitting the mark.
- Provide feedback on:
  - Technical Skills
  - Professional Skills
  - Wins from the last period
  - What is blocking them from achieving more
  - Opportunities for the next period

# May is Email month
- External email indicator
  - Add an external email indicator to Outlook with [this powershell script](email_external.ps1).  Do not prepend an "external" message to emails because it hides the real message from the preview pane.  Do not append an "external" message to emails because no one reads them.
- Enable Safe Links
  - Enabling [Safe Links](https://learn.microsoft.com/en-us/defender-office-365/safe-links-policies-configure) protects users in Outlook, Office, and Teams.  It is especially good when a link gets classified as malicious and everyone with the malicous link is protected.  Even if the email or document isn't deleted.
- External emails to groups
  - Review all groups and validate if they should be able to receive external email.  I have seen several instances where a disgruntled employee will send a message to 'All Employees' from an anonymous email address.  External emails should not be able to reach everyone on the company.
- External emails to shared mailboxes
  - See above.
- Exchange Admin Center Review
  - Review [Connectors](https://admin.exchange.microsoft.com/#/connectors) - Compare connector settings with documentation.  Disable old connectors.  Delete disabled connectors.
  - Review [Transport Rules](https://admin.exchange.microsoft.com/#/transportrules) - Review rules that have not been executed recently.  Review rules that process exceptions to ensure messages or mailboxes are protected.
  - Review [Remote Domains](https://admin.exchange.microsoft.com/#/remotedomains) - Compare configured domains with documentation and update accordingly.
  - Review [Accepted Domains](https://admin.exchange.microsoft.com/#/accepteddomains) - Same.
  - Review [MRM Retention Policies](https://purview.microsoft.com/datalifecyclemanagement/exchange/retentionpolicies) - These policies are the only way to move email from the primary mailbox to the archive mailbox.
  - Review [Mobile Device Access Rules](https://admin.exchange.microsoft.com/#/mobiledeviceaccess) - Review rules.
  - Review [Mobile Device Mailbox Policies](https://admin.exchange.microsoft.com/#/mobiledevicemailboxpolicy) - Review policies.

# June is Device month
- Printers/Scanners/MFDs
  - Inventory.
  - Updates: software, driver, firmware
  - Network Time Protocol settings.
- Desk Phones
  - Inventory.
  - Updates: firmware
- Network (switches/hubs/routers/APs)
  - Inventory.
  - Review: licenses, waranties, service contracts
  - Updates: (probably automatic)
- Cameras
- HVAC

# July is Disaster Recovery month
- Service Provider/Vendor support numbers
  - Collect the support numbers of service providers and vendors
  - Call the number and document how to get to the right support agent
  - Document the information that they ask for such as account numbers, PINs, etc.
  - Verify the employees that are authorized *on the vendor's side* to open support requests
  - Document their support hours
  - Document their escalation process
 
# August is Policy month
- Policies to review:
  - Business continuity
  - Cybersecurity
  - Bring Your Own Device (BYOD)
  - Work from home
  - Accounts
    - User password policies
    - 2FA policies
    - Application account policies
    - Service account policies (secret rotation, etc.)
  - SOC
    - Data Protection (HIPAA, PII, GDPR, PCI, etc.)
    - Data Retention/Removal

# September is Budgeting month
- See [Budget](budget.md)
# October is Security month
- Configure alerts
  - [Microsoft Defender](https://security.microsoft.com/securitysettings/endpoints/email_notifications) - Configure Alerts and Vulnerability notifications by adding recipients.
- Endpoint Security
  - Microsoft Intune - Too much to list.  Configure policies for connectivity, operating system, and software.
  - Microsoft Defender - Too much to list.  Configure policies for users, data, and reporting.
- Physical security
- Credential management
- Software development processes

# November

# December is Planning month
- Review everything that was accomplished during the year.
- Review processes that are being done manually.
  - Focus on the ones that have multiple steps
  - Focus on the ones that cause other departments to wait (new user setup, password reset)
  - Focus on what can be automated
- Review tech support cases for trends and explore mitigations.
- Review vendor relationships and sumarize their effectiveness.

