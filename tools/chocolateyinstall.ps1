$packageName= 'em-client' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://de.emclient.com/dist/latest/setup.msi' # download url


$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = $url

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'em client*'
}

Install-ChocolateyPackage @packageArgs