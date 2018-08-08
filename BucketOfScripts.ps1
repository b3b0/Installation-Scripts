#JAVA
#######################################
$currentversion = "jre1.8.0_181"
$javaX86 = "C:\Program Files (x86)\Java\$currentversion"
$javaX64 = "C:\Program Files\Java\$currentversion"
if ([Environment]::Is64BitProcess -eq $True)
{
  if ( -not (Test-Path $javaX64 ))
  {
    & .\x64.exe /s
  }
  if ( -not (Test-Path $javaX86))
  {
    & .\x86.exe /s
  }
}

if ([Environment]::Is64BitProcess -eq $False)
{
  if ( -not (Test-Path $javaX64 ))
  {
    & .\x86.exe /s
  }
}


#SILVERLIGHT
##################################
#silverlightinstall.ps1
$currentversion = "5.1.50907.0"
$silverloc = "C:\Program Files\Microsoft Silverlight\$currentversion"
if ([Environment]::Is64BitProcess -eq $True)
{
  if ( -not (Test-Path $silverloc ))
  {
    & .\x64.exe /s
  }
}

if ([Environment]::Is64BitProcess -eq $False)
{
  if ( -not (Test-Path $silverloc ))
  {
    & .\x86.exe /s
  }
}

#FLASH
################################
$currentversion = "30_0_0_134"
$npapiloc = "C:\Windows\System32\Macromed\Flash\FlashUtil64_$($currentversion)_Plugin.exe"
if ( -not (Test-Path $npapiloc ))
{
  & msiexec.exe /i install_flash_player_30_plugin.msi /qn /noreboot
}
