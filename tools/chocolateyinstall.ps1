$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'http://www.emclient.com/dist/v7.0.28822/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= '7ae638d2871c62b59c7271ccc142a95269dec060ea11a3f58d8c9f1f0eadee43'

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
