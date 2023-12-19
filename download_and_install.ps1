Set-Location -Path $ENV:Temp -PassThru

$url = "https://dbeaver.io/files/dbeaver-ce-latest-x86_64-setup.exe"

$temp_location = $ENV:Temp;

$binary = $url.Split('/')[-1]
$download_location = $temp_location + $binary 
Invoke-WebRequest $url  -OutFile $download_location

$command = $temp_location +  $binary
Invoke-Expression -Command $command