$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'http://www.emclient.com/dist/v7.2.34208/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= '05ea0fa70829b0bcc677a16ed2a406939544e9ffb9b8cfa358342c8ebba85000'

$packageArgs = @{
  packageName           = $packageName
  fileType              = $fileType
  url                   = $url
  url64                 = $url
  silentArgs            = $silentArgs
  checksum              = $checksum
  checksum64            = $checksum
  checksumType          = 'sha256'
  checksumType64        = 'sha256'
  validExitCodes        = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
