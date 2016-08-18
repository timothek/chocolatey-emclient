$packageName	= 'em-client'
$fileType		= 'MSI'
$url			= 'http://www.emclient.com/dist/v7.0.26687/setup.msi'
$silentArgs		= "/qn /norestart"
$validExitCodes	= @(0, 3010, 1641)
$checksum  		= '7408A501D12C43117611C164CED6C5B9149CC22F5AD394DD0DC370B190C8FD70'

$packageArgs = @{
  packageName            = $packageName
  fileType               = $fileType
  url                    = $url
  url64					 = $url
  silentArgs             = $silentArgs
  checksum               = $checksum
  checksum64             = $checksum
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  validExitCodes		 = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs