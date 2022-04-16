$toUninstall = @(
    @{Name='Spotify'; ID='Spotify.Spotify'},
    @{Name='Groove'; ID='Microsoft.ZuneMusic_8wekyb3d8bbwe'},
    @{Name='Microsoft OneDrive'; ID='Microsoft.OneDrive'},
    @{Name='Disney+'; ID='Disney.37853FC22B2CE_6rarf9sa4v8jt'},
    @{Name='MSN Clima'; ID='Microsoft.BingWeather_8wekyb3d8bbwe'},
    @{Name='Cortana'; ID='Microsoft.549981C3F5F10_8wekyb3d8bbwe'},
    @{Name='Skype'; ID='Microsoft.SkypeApp_kzf8qxf38zg5c'}
)

foreach ($software in $toUninstall)
{
    $name = $software.Name
    $id = $software.ID
    $response = Read-Host "Do you want to uninstall $name ? [Y]Yes [N]No"

    if ($response -ne "Y" -and $response -ne "N") {
        Write-Output "Invalid Option. Use Y or N"
    }
    
    if($response -eq "Y"){
        Write-Output "Trying to uninstall..."
        winget uninstall $id
    }
}

Write-Output "Finished."