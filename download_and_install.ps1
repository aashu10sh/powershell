Set-Location -Path $ENV:Temp -PassThru


$url = "https://dbeaver.io/files/dbeaver-ce-latest-x86_64-setup.exe"
$temp_location = $ENV:Temp;

$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($url,$temp_location)
$binary = $url.Split('/')[-1]


$command = $temp_location +  $binary

Invoke-Expression -Command $command