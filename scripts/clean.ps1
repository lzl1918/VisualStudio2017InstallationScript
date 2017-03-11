Write-Output 'This will clean the installation temporary files while update packages'

$path = $pwd.Path + "\vs2017\"
$folders = Get-ChildItem $path | Where-Object {$_ -is [System.IO.DirectoryInfo]} | Where-Object {$_.Name -match "^(\d|\w)\.(\d|\w){3}$"}
if($folders.Length -eq 0)
{
    Write-Host "clean skipped"
}
else
{
    Write-Host "the following folders would be removed"
    $folders | Format-Table
    $continue=(Read-Host "[y]continue `t[n]cancel")
    if($continue -eq "y")
    {
        foreach($folder in $folders)
        {
            $curpath = $path + $folder.Name
            Remove-Item -Path $curpath -Recurse
        }
    }
}