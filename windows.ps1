Write-Host "Installing Dev Tools (Windows 10/11)..."

Get-Content windows-tools.txt | ForEach-Object {
    winget install --id $_ --accept-source-agreements --accept-package-agreements
}

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

Write-Host " Windows Dev Environment Installed"
