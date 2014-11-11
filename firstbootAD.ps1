Import-Module Servermanager

Add-WindowsFeature AD-Domain-Services,ADDS-Domain-Controller 

# Run dcpromo
$dcpromo = "dcpromo /unattend:C:\vagrant\nacs_dev_ad.txt"

invoke-expression -command $dcpromo

# Create Admin user
New-ADUser nasadmin -givenanem NACS -surname admin -AccountPassword (ConvertTo-SecureString "T2Gt1wU70!" -AsPlainText -force) -enabled $true



