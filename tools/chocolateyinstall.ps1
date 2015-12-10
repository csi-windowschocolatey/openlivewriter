
$ErrorActionPreference = 'Stop';

$packageName= 'openlivewriter'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://openlivewriter.azureedge.net/stable/Releases/Setup.exe'
$url64      = 'https://openlivewriter.azureedge.net/stable/Releases/Setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  silentArgs    = '--silent'
}

Install-ChocolateyPackage @packageArgs

Write-Output "The install log is at ``"$env:localappdata\SquirrelTemp\SquirrelSetup.log`""
