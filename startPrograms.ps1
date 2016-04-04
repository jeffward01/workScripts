Write-Host("Program launch sequence intiated...")

$taskList = $SQL, $SQLServerMngr, $Outlook, $ExcelTimesheet, $IIS, $UpdateProjects
$counter = 0
foreach ($task in $taskList) {
$counter++
Write-Progress -Activity 'Processing Operations' -CurrentOperation $task -PercentComplete (($counter / $taskList.count) * 100)
Start-Sleep -Milliseconds 200
}


$SQLServerMngr = "C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\ManagementStudio\Ssms.exe"
$VisualStudio = "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"   
$Outlook = "C:\Program Files (x86)\Microsoft Office\Office14\Outlook.exe" 
$ExcelTimesheet = "C:\Users\WardJe\Documents\Resources\Time Sheet\Jeff Ward - TimeSheet - Jan 2016.xls"
$IIS = "C:\Windows\system32\inetsrv\InetMgr.exe"
$UpdateProjects = "C:\Dev\scripts\updateSVNprojects.ps1"
$Bansky = "C:\Dev\scripts\banskyMolotov.ps1"

& $SQLServerMngr 
& $VisualStudio
& $Outlook
& $ExcelTimesheet
& $IIS

& $UpdateProjects

Write-Host("Launch cycle completed")
Write-Host("Thank you for using scripts")
& $Bansky