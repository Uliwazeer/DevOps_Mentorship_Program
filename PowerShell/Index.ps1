$read_file = Get-Content -Path "C:\Users\Ali Wazeer\Desktop\Web_Developer\link.txt"
foreach ($folder_path in $read_file) {

    $get_files = Get-ChildItem -Path $folder_path -Recurse | Measure-Object -Sum -Property "length" | Tee-Object -Variable ss

    # Calculate the size of the folder in gigabytes
    $size_in_byte = $ss.Sum
    [double]$size_in_gb = $size_in_byte / 1GB

    # Print the folder size in GB
    Write-Host "SIZE OF YOUR FOLDER $folder_path IS $size_in_gb GB" -BackgroundColor Black -ForegroundColor Green
}
