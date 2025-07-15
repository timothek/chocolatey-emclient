$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'https://www.emclient.com/dist/v10.3.2619/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= '56f36386783eecb2fe64d1247ff9632cbcb4100b5cf8ef255de3981913ad55df'

$packageArgs = @{
  packageName           = $packageName
  fileType              = $fileType
  url                   = $url
  silentArgs            = $silentArgs
  checksum              = $checksum
  checksumType          = 'sha256'
  validExitCodes        = $validExitCodes
}
Install-ChocolateyPackage @packageArgs
