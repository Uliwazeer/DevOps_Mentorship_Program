$path = Read-Host "PUT YOUR FULL PATH"
$get_files = Get-ChildItem -Path $path -Recurse | Measure-Object -Sum -Property "length" | Tee-Object -Variable ss


#Write-Host "$ss"
$size_in_byte = $ss.Sum
[int]$size_in_gb = $size_in_byte / 1gb
[System.Environment]::NewLine
Write-Host "SIZE OF YOUR FOLDER $path IS $size_in_gb GB" -BackgroundColor Black -ForegroundColor Green



#Write Firstly this command on your powershell

#PS C:\Users\Ali Wazeer\Desktop> Get-ChildItem -Path .\python\ -Recurse | Measure-Object -Sum -Property "length" | Tee-Object -Variable ss
#PS C:\Users\Ali Wazeer\Desktop> $ss.Sum
#PS C:\Users\Ali Wazeer\Desktop> $ss.Sum / 1gb
#PS C:\Users\Ali Wazeer\Desktop> powershell_ise.exe

#to run file 
# .\Size_Folder.ps1