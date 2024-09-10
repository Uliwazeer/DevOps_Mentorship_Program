# Load the required .NET assembly for Windows Forms
Add-Type -AssemblyName System.Windows.Forms

# Create and show the FolderBrowserDialog
$folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$dialogResult = $folderBrowser.ShowDialog()

# Check if the user selected a folder
if ($dialogResult -eq [System.Windows.Forms.DialogResult]::OK) {
    # Get the selected folder path
    $folderPath = $folderBrowser.SelectedPath

    # Get the size of all files in the selected folder recursively
    $files = Get-ChildItem -Path $folderPath -Recurse -File | Measure-Object -Sum -Property Length

    # Calculate the total size in gigabytes
    $sizeInBytes = $files.Sum
    [double]$sizeInGB = $sizeInBytes / 1GB

    # Display the result
    Write-Host "The size of the folder '$folderPath' is $sizeInGB GB." -ForegroundColor Green
} else {
    Write-Host "No folder selected." -ForegroundColor Yellow
}
