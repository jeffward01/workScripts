
#copy files from Solution location fo directory

Copy-Item -Path C:\Dev\projects\UMPGUSL\svn\trunks\Source\SolutionFiles\UMPG.USL.API.Tests -Destination C:\Dev\projects\AdditionFiles\USL.API\USL.API.Tests -Recurse -force

#Clear-Host

#Output
Write-Host "Copy of Tests Project was a Success!"

#picture
$text = Get-Content -Raw C:\Dev\scripts\asciiArt\smileyFace.txt | Write-Host