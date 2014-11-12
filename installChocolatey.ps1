iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

invoke-expression -Command "choco install wincommandpaste"

invoke-expression -Command "choco install googlechrome"
