Import-Module "vstype.ps1"
$type = Get-VSType
function Contact([System.Collections.Generic.IEnumerable[object]]$str_list) {
	[System.Text.StringBuilder]$builder = New-Object System.Text.StringBuilder
	foreach($str in $str_list) {
		$builder.AppendFormat("'{0}',", $str) | Out-Null
	}
	if($builder.Length -gt 0) {
		$builder.Remove($builder.Length - 1, 1) | Out-Null
	}
	return $builder.ToString()
}
$langs = ('en-US', 'zh-CN', 'ja-JP')
$packs = Get-Content .\installed_packs.txt -Raw
@"
`$installername = "vs_$type.exe"
`$langs = ($(Contact($langs)))
`$addpacks = (
$packs
)

# args for packages
`$addpackargs = ''
`$sigpacks = (`$addpacks | Group-Object)
foreach(`$pack in `$sigpacks) {
    `$addpackargs += "--add `$(`$pack.Name) ^``n"
}
`$addpackargs = `$addpackargs.Substring(0, `$addpackargs.Length - 1)

# args for langs 
`$langargs = ''
foreach(`$lan in `$langs) {
    `$langargs += "`$lan "
}
`$langargs = `$langargs.Substring(0, `$langargs.Length - 1)

# find the path
`$path = `$pwd.Path + "vs2017"

# write args to console
`$cmdline = ".\`$installername --layout `$path --lang `$langargs `$addpackargs"
Write-Output `$cmdline | Out-File "setup.bat" -Encoding ascii
Start-Process cmd -ArgumentList @("/c", "setup.bat") -Wait
Remove-Item .\setup.bat
"@ | Out-File update_template.ps1 -Encoding ascii

.\update_template.ps1
Remove-Item .\update_template.ps1