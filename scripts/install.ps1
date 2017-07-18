Import-Module "vstype.ps1"
$type = Get-VSType
$path = $pwd.Path + "\vs2017\vs_$type.exe"
& $path