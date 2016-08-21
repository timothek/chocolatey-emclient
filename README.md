# chocolatey-emclient

A chocolatey package for eM Client.

**What is chocolatey?**

Chocolatey NuGet is a Machine Package Manager, somewhat like apt-get, but built with Windows in mind. Visit [chocolatey.org](https://chocolatey.org/) for more information.

**How to install eM Client through chocolatey?**

To install em-client, run the following command from the command line or from PowerShell:
```
choco install em-client
```

**What does update.ps1 do?**

update.ps1 is a PowerShell script to automaticly update em-client.nuspec and chocolateyinstall.ps1, if a new version of eM Client is published. Please refer to the Automatic Chocolatey Package Update Module documentation (https://github.com/majkinetor/au/blob/master/README.md).
