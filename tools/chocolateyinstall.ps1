$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'http://www.emclient.com/dist/v7.1.31849/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= 'f5dd2720cb57e8ed167128c285523388c7e1c144d755051e06371ad5aaf623bb'

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
