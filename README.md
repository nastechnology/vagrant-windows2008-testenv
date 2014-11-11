## NACS Windows Server Test environments

To setup an Active Directory server change the provision line to look like this:

```config.vm.provision :shell, :path => "firstbootAD.ps1"```

To setup a DHCP  server change the provision line to look like this:

```config.vm.provision :shell, :path => "firstbootDHCP.ps1"```

To setup a DNS server change the provision line to look like this:

```config.vm.provision :shell, :path => "firstbootDNS.ps1"```

To setup a File server change the provision line to look like this:

```config.vm.provision :shell, :path => "firstbootFS.ps1"```

To setup a Print server change the provision line to look like this:

```config.vm.provision :shell, :path => "firstbootPRINT.ps1"```
