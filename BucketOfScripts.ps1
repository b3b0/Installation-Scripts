
#########################################
#     ___  _______  __   __  _______ 
#    |   ||   _   ||  | |  ||   _   |
#    |   ||  |_|  ||  |_|  ||  |_|  |
#    |   ||       ||       ||       |
# ___|   ||       ||       ||       |
#|       ||   _   | |     | |   _   |
#|_______||__| |__|  |___|  |__| |__|
#
#########################################

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



##########################################
# _______  ___   ___      __   __  _______  ______    ___      ___   _______  __   __  _______ 
#|       ||   | |   |    |  | |  ||       ||    _ |  |   |    |   | |       ||  | |  ||       |
#|  _____||   | |   |    |  |_|  ||    ___||   | ||  |   |    |   | |    ___||  |_|  ||_     _|
#| |_____ |   | |   |    |       ||   |___ |   |_||_ |   |    |   | |   | __ |       |  |   |  
#|_____  ||   | |   |___ |       ||    ___||    __  ||   |___ |   | |   ||  ||       |  |   |  
# _____| ||   | |       | |     | |   |___ |   |  | ||       ||   | |   |_| ||   _   |  |   |  
#|_______||___| |_______|  |___|  |_______||___|  |_||_______||___| |_______||__| |__|  |___|  
#########################################

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

##########################################
# _______  ___      _______  _______  __   __ 
#|       ||   |    |   _   ||       ||  | |  |
#|    ___||   |    |  |_|  ||  _____||  |_|  |
#|   |___ |   |    |       || |_____ |       |
#|    ___||   |___ |       ||_____  ||       |
#|   |    |       ||   _   | _____| ||   _   |
#|___|    |_______||__| |__||_______||__| |__|
##########################################

$currentversion = "30_0_0_134"
$npapiloc = "C:\Windows\System32\Macromed\Flash\FlashUtil64_$($currentversion)_Plugin.exe"
if ( -not (Test-Path $npapiloc ))
{
  & msiexec.exe /i install_flash_player_30_plugin.msi /qn /noreboot
}


#####################################################################
 # _____  ______          _____  ______ _____    _____   _____ 
 #|  __ \|  ____|   /\   |  __ \|  ____|  __ \  |  __ \ / ____|
 #| |__) | |__     /  \  | |  | | |__  | |__) | | |  | | |     
 #|  _  /|  __|   / /\ \ | |  | |  __| |  _  /  | |  | | |     
 #| | \ \| |____ / ____ \| |__| | |____| | \ \  | |__| | |____ 
 #|_|  \_\______/_/    \_\_____/|______|_|  \_\ |_____/ \_____|
################################################################                                                              
$currver = (Get-Item "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe").VersionInfo | Select-Object -ExpandProperty FileVersion
if ( -not ($currver -eq "18.11.20055.290043"))
{
    & .\AcroRdrDC1801120055_en_US.exe /msi EULA_ACCEPT=YES /qn
}
