$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'https://www.emclient.com/dist/v10.0.2934/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= '11e266bb8be978e21ef4d2f72c606200eb69214d31d8230aff1f926766c91cf0'

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
