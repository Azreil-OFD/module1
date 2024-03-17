# Check if install-python.ps1 has already been executed
if (-not (Test-Path -Path "install-python.flag")) {
    Start-Process -FilePath "powershell.exe" -ArgumentList "-File", "install-python.ps1" -Wait
    # Create flag file to mark that install-python.ps1 has been executed
    New-Item -ItemType file -Path "install-python.flag" -Force
}

# Check if install-poetry.ps1 has already been executed
if (-not (Test-Path -Path "install-poetry.flag")) {
    Start-Process -FilePath "powershell.exe" -ArgumentList "-File", "install-poetry.ps1" -Wait
    # Create flag file to mark that install-poetry.ps1 has been executed
    New-Item -ItemType file -Path "install-poetry.flag" -Force
}