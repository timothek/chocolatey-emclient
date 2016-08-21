$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'http://www.emclient.com/dist/v7.0.26687/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= '7408a501d12c43117611c164ced6c5b9149cc22f5ad394dd0dc370b190c8fd70'

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
