$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'http://www.emclient.com/dist/v7.0.27943/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= 'c3d07d32c6a915f29eb83d22cee267f3e3909fedbfd32930401b384acfd835a6'

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
