# Define the URL of the krak.cmd file
$url = "https://raw.githubusercontent.com/billpoulson/krak/main/krak.cmd"
$wipUrl = "https://raw.githubusercontent.com/billpoulson/krak/main/krak-wip.cmd"

# Define the destination path for the krak.cmd file
$destinationPath = "$env:USERPROFILE\bin\krak.cmd"
$wipDestinationPath = "$env:USERPROFILE\bin\krak-wip.cmd"

# Make sure the bin directory exists, if not, create it
if (-not (Test-Path -Path "$env:USERPROFILE\bin")) {
  New-Item -ItemType Directory -Path "$env:USERPROFILE\bin"
}

# Download the krak.cmd file
Invoke-WebRequest -Uri $url -OutFile $destinationPath

# Download the krak-wip.cmd file
Invoke-WebRequest -Uri $wipUrl -OutFile $wipDestinationPath

# Ensure the bin directory is in the user's PATH for future sessions
$currentPath = [System.Environment]::GetEnvironmentVariable("PATH", "User")
if ($currentPath -notlike "*$env:USERPROFILE\bin*") {
  [System.Environment]::SetEnvironmentVariable("PATH", "$currentPath;$env:USERPROFILE\bin", "User")
  Write-Output "'$env:USERPROFILE\bin' has been added to the PATH for future sessions. Please restart your terminal or computer."
}
else {
  Write-Output "'$env:USERPROFILE\bin' is already in the PATH for future sessions."
}

# Add the bin directory to the PATH for the current session
if ($env:PATH -notlike "*$env:USERPROFILE\bin*") {
  $env:PATH += ";$env:USERPROFILE\bin"
  Write-Output "'$env:USERPROFILE\bin' has been added to the PATH for the current session."
}
Write-Output "krak.cmd has been downloaded to $destinationPath"
Write-Output "krak-wip.cmd has been downloaded to $wipDestinationPath"
