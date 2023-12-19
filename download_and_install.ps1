Set-Location -Path $ENV:Temp -PassThru

$url = "https://dbeaver.io/files/dbeaver-ce-latest-x86_64-setup.exe"

$temp_location = $ENV:Temp;

$binary = $url.Split('/')[-1]
$download_location = $temp_location + $binary 
Write-Output "Getting Binary From $url"
Write-Output "Binary : $binary"
Write-Output "Download LOcation : $download_location"

Write-Output "Downloading"
curl $url -o $download_location
# Invoke-WebRequest $url  -OutFile $download_location
# wget $url $download_location


$command = $temp_location +  $binary
Write-Output "Executing : $command"

Invoke-Expression -Command $command
