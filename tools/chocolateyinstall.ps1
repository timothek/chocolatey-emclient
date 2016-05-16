
$packageName	= 'em-client'
$fileType		= 'MSI'
$32BitUrl		= 'http://de.emclient.com/dist/latest/setup.msi'
$64BitUrl		= $32BitUrl
$silentArgs		= "/qn /norestart /"
$validExitCodes	= @(0, 3010, 1641)

# install eM Client
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$32BitUrl" "$64BitUrl" -validExitCodes $validExitCodes