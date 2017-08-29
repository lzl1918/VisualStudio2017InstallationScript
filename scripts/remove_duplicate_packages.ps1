function CompareVersion($v1, $v2) {
    $v1s = $v1.Split('.')
    $v2s = $v2.Split('.')
    for($i = 0; $i -lt $v1s.Length; $i++) {
        $v1n = [int]::Parse($v1s[$i])
        $v2n = [int]::Parse($v2s[$i])
        if($v1n -lt $v2n) {
            return -1
        }
        elseif($v1n -gt $v2n) {
            return 1
        }
    }
    return 0
}
function ConcatWithoutVersion($strs) {
    [System.Text.StringBuilder]$builder = New-Object "System.Text.StringBuilder"
    $builder.Append($strs[0]) | Out-Null
    for($i = 2; $i -lt $strs.Length; $i++) {
        $builder.Append(',') | Out-Null
        $builder.Append($strs[$i]) | Out-Null
    }
    return $builder.ToString()
}
function ConcatWithVersion($strs, $version) {
    [System.Text.StringBuilder]$builder = New-Object "System.Text.StringBuilder"
    $builder.Append($strs[0]) | Out-Null
    $builder.Append(",version=") | Out-Null
    $builder.Append($version) | Out-Null
    for($i = 2; $i -lt $strs.Length; $i++) {
        $builder.Append(',') | Out-Null
        $builder.Append($strs[$i]) | Out-Null
    }
    return $builder.ToString()
}

$directories = (Get-ChildItem -Path ".\vs2017" | Where-Object {$_ -is [System.IO.DirectoryInfo]} | Select-Object -Property Name)
$dic = New-Object "System.Collections.Generic.Dictionary[string,string]"
$removeNames = New-Object "System.Collections.Generic.List[string]"
$directories | ForEach-Object {
    $names = $_.Name.Split(',')
    if($names.Length -le 1) {
        return
    }
    $versionString = $names[1]
    if($versionString.StartsWith("version=") -eq $false) {
        return
    }
    $versionString = $versionString.SubString(8)
    $nameWithoutVersion = ConcatWithoutVersion $names
    if($dic.ContainsKey($nameWithoutVersion)) {
        $oldV = $dic[$nameWithoutVersion]
        if((CompareVersion $oldV $versionString) -eq -1) {
            $removeName = ConcatWithVersion $names $oldV
            $removeNames.Add($removeName)
            $dic[$nameWithoutVersion] = $versionString
        }
        else {
            $removeName = ConcatWithVersion $names $versionString
            $removeNames.Add($removeName)
        }
    }
    else {
        $dic[$nameWithoutVersion] = $versionString
    }
}
$removeNames
$removeNames.Count
return
$removeNames | ForEach-Object {
    Remove-Item -Path ".\vs2017\$_" -Recurse
}
