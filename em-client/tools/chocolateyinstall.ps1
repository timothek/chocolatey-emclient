$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'https://www.emclient.com/dist/v10.1.4417/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= 'eddf00b6a400ecea080504982944ec3812075980e328c558d51237fde42e2de7'

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
