param(
[Parameter(Mandatory=$true)]
[string]$ExecutableFilePath,
[Parameter(Mandatory=$true)]
[string]$OutputFolder,
[Parameter(Mandatory=$true)]
[string]$Folder1,
[Parameter(Mandatory=$true)]
[string]$Folder2
)
Write-Host "Inside the powershell program. Here are the input variables."
Write-Host $executableFilePath
Write-Host $OutputFolder
Write-Host $folder1
Write-Host $folder2