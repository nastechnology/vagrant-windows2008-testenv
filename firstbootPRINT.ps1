Import-Module Servermanager

Add-WindowsFeature Print-Services,Print-Server

invoke-expression C:\vagrant\installChocolatey.ps1



