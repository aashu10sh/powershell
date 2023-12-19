# Download and Install Dbeaver automatically with Powershell
> Run the below two commands

1. Run Powershell as Administrator and run
```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass

```


```powershell
curl https://raw.githubusercontent.com/ashshelby/powershell/master/download_and_install.ps1 -o script.ps1;./script.ps1
```