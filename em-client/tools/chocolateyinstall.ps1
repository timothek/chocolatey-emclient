$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'https://www.emclient.com/dist/v10.4.5326/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= '2699adae5607438fbe6eacfab2b60baa5086d8280a8f797778c5c52dde7ac1e0'

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
