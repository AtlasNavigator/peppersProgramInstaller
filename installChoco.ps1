# obtained from this thread on spiceworks: https://community.spiceworks.com/topic/2203658-check-if-choco-already-installed-and-install-if-not
$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Chocolatey is missing, installing now..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else{
    Write-Output "Chocolatey Version $testchoco is currently installed."
    Write-Output "Proceeding with installation..."
    Write-Output " "
}

# or

if(test-path "C:\ProgramData\chocolatey\choco.exe"){

}