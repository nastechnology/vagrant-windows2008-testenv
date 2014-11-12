Import-Module Servermanager

Add-WindowsFeature File-Services,FS-Fileserver

invoke-expression C:\vagrant\installChocolatey.ps1


