Import-Module Servermanager

Add-WindowsFeature AD-Domain-Services,ADDS-Domain-Controller 

# Run dcpromo
#Create an unattend.txt file to automate the DCPROMO process
$unattend = "c:\unattend.txt"
if(!(test-path $unattend)) { new-item $unattend -type file }

$content = @(
    "[DCInstall]"
    "ReplicaOrNewDomain=Domain"
    "NewDomain=Forest"
    "NewDomainDNSName=dc.nacs.dev"
    "ForestLevel=4"
    "DomainNetbiosName=dc"
    "DomainLevel=4"
    "InstallDNS=Yes"
    "ConfirmGc=Yes"
    "CreateDNSDelegation=No"
    'DatabasePath="C:\Windows\NTDS"'
    'LogPath="C:\Windows\NTDS"'
    'SYSVOLPath="C:\Windows\SYSVOL"'
    'SafeModeAdminPassword="T2Gt1wU70!"'
    "RebootOnCompletion=Yes"
)

#out-file -filepath $unattend -inputobject $content
write-outpu $content | out-file $unattend

$dcpromo = "dcpromo /unattend:$unattend"

# Create Admin user
New-ADUser nasadmin -givenanem NACS -surname admin -AccountPassword (ConvertTo-SecureString "T2Gt1wU70!" -AsPlainText -force) -enabled $true

invoke-expression -command $dcpromo


