
$name = 'em client'
$app = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -match $name};

# check, if eM Client is installed
if ($app -eq $null) {
  echo 'eM Client is not installed.'
# if not, uninstall
} else {
  $app.Uninstall()
  echo 'eM Client has been uninstalled.'
}