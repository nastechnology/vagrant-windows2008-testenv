Import-Module Servermanager

Add-WindowsFeature AD-Domain-Services,ADDS-Domain-Controller 

# Run dcpromo
$dcpromo = "dcpromo /unattend:C:\vagrant\nacs_dev_ad.txt"

invoke-expression -command $dcpromo



