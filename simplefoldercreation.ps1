# SimpleFolderCreation.ps1

# Parameters (allows you to specify the folder path during deployment)
param (
    [string]$FolderPath = "C:\Deployments\NewFolder"
)

# Check if the folder already exists
if (!(Test-Path -Path $FolderPath)) {
    # Create the folder if it doesn't exist
    New-Item -ItemType Directory -Path $FolderPath -Force | Out-Null
    Write-Output "Folder created at: $FolderPath"
} else {
    Write-Output "Folder already exists at: $FolderPath"
}

# Verify the folder creation
if (Test-Path -Path $FolderPath) {
    Write-Output "Folder verification successful."
} else {
    Write-Output "Failed to create the folder."
    exit 1
}
