$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'https://www.emclient.com/dist/v8.0.2951/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= '277a43effcee6b07ab92f9b8fb53d2bd2ac812330454bc6e2e804ba65d89b6f6'

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
