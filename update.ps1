import-module au

$releases = 'http://www.emclient.com/release-history'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    $re      = 'setup.msi'
    $url     = $download_page.links | Where-Object href -match $re | Select-Object -First 1 -expand href
    $version = ($url -split "/" | Select-Object -Index 4).Substring(1)

    return @{ URL32 = $url; Version = $version; ChecksumType32 = 'sha256';}
}

update