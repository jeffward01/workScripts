
#copy files from Solution location fo directory

Copy-Item -Path C:\Dev\projects\UMPGDML\svn\trunks\Source\SolutionFiles\UMPG.DML.CoreAPI.Tests -Destination C:\Dev\projects\AdditionFiles\DML.CoreAPI\DML.CoreAPI.Tests -Recurse -force

Clear-Host

#Output
Write-Host "Copy of Tests Project was a Success!"

#picture
$text = Get-Content -Raw C:\Dev\scripts\asciiArt\smileyFace.txt | Write-Host