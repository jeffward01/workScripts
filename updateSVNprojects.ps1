#define project location paths
$DML = "C:\Dev\projects\UMPGDML\svn"
$USL = "C:\Dev\projects\UMPGUSL\svn"
$UMGApps =  "C:\Dev\projects\UMPGapps\svn"
$HomeLocation = "C:\Dev\scripts"

Write-Host "Initiate update of DML, USL, and UMPGApps"

#Update DML
Set-Location $DML
Write-Host "Updating DML"
svn cleanup --non-interactive
svn update
Write-Host "Update of DML Complete."


#Update UMGApps
Set-Location $UMGApps
Write-Host "Updating UMPGApps"
svn cleanup --non-interactive
svn update
Write-Host "Update of UMPGApps Complete"

#Update Mechs
Set-Location $USL
Write-Host "Updating USL"
svn cleanup --non-interactive
svn update
Write-Host "Update of USL Complete"

#This is the locaiton your powershell will finish in
Set-Location $HomeLocation
#Clear-Host 
Write-Host "UMPGDML, UMPGapps & UMPGUSL have been updated and are sync'd with SVN trunk."

#This is the 'Success Image'
$text = Get-Content -Raw C:\Dev\scripts\asciiArt\updated-source.txt | Write-Host


