# Path of my slideshow
$wallpaperPath = "C:\Users\matti\Pictures\belle\esportate"

# Select random File from path
$wallpaperFile = Get-ChildItem -name -Path $wallpaperPath | Select-Object -index $(Random $((Get-ChildItem -Path $wallpaperPath).Count))


$Key = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP'
if (!(Test-Path -Path $Key)) {
   New-Item -Path $Key -Force | Out-Null
}
Set-ItemProperty -Path $Key -Name LockScreenImagePath -value "$wallpaperPath\$wallpaperFile"
