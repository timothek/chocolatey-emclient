import-module au

$releases = 'https://www.emclient.com/release-history?os=win'

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

    # get all links from changelog website and split download url to get version number
    $re      = 'setup.msi'
    $url     = $download_page.links | Where-Object href -match $re | Select-Object -First 1 -expand href
    $version = ($url -split "/" | Select-Object -Index 4).Substring(1)

    $htmlDom = $download_page.RawContent | ConvertFrom-Html
    $changelog =  $htmlDom.SelectSingleNode('//*[@id="emcReleaseHistory"]/section/div/div[6]/p').InnerText

    # if the changelog contains the word "beta", add it as suffix to the version number
    if($changelog.ToLower().Contains('beta'.ToLower())) {
        $version = $version + '-' + 'beta'
    }

    return @{ URL32 = $url; Version = $version; ChecksumType32 = 'sha256';}
}

function global:au_AfterUpdate ($Package)  {
    Set-DescriptionFromReadme $Package -SkipLast 0 -SkipFirst 2
}

Update-Package