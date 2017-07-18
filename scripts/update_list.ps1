$type = .\vstype.ps1

function Get-VisualStudioPackages([string]$channel) {
    $url = "https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-$channel"

    [System.Net.HttpWebRequest]$webrequest = [System.Net.HttpWebRequest]::Create($url)
    $webrequest.Method = "GET"
    [System.Net.HttpWebResponse]$response = $webrequest.GetResponse()
    if($response -eq $null) {
        return
    }
    [System.IO.Stream]$stream = $response.GetResponseStream()
    [System.IO.StreamReader]$reader = New-Object System.IO.StreamReader $stream
    $result = $reader.ReadToEnd()
    $reader.Dispose()
    $stream.Dispose()
    $response.Dispose()

    [Regex]$titleReg = New-Object Regex "<h2[^>]*>(?'title'[^<]*)</h2>"
    [System.Text.RegularExpressions.Match]$match = $titleReg.Match($result)
    [System.Collections.Generic.List[string]]$contents = New-Object System.Collections.Generic.List[string]
    $lst = 0
    while($match.Success -eq $true) {
        $contents.Add($result.Substring($lst, $match.Index - $lst))
        $lst = $match.Index
        $match = $match.NextMatch()
    }
    $contents.RemoveAt(0)
    [System.Text.StringBuilder]$stb = New-Object System.Text.StringBuilder
    [regex]$contentReg = New-Object regex "<td>(?'id'[^<]*)</td>\s*<td>(?'name'[^<]*)</td>\s*<td>(?'version'[^<]*)</td>(\s*<td>(?'type'[^<]*)</td>)?"

    [string]$title=''
    [System.Text.RegularExpressions.Match]$titleMatch = $null
    [int]$searchbegin = 0
    [string]$contentMain = ''
    [System.Text.RegularExpressions.MatchCollection]$contentMatches = $null

    $caps = $contents | ForEach-Object {
        $titleMatch = $titleReg.Match($_)
        $title = $titleMatch.Groups['title'].Value
        $searchbegin = $_.IndexOf("<tbody>")
        $contentMain = $_.Substring($searchbegin)
    
        $contentMatches = $contentReg.Matches($contentMain)
        $items = $contentMatches | ForEach-Object {
            $type = "Optional"
            if(($title -eq 'Unaffiliated components') -eq $false) {
                $type = $_.Groups['type'].Value 
            }
            [PSCustomObject]@{
                Id=$_.Groups['id'].Value 
                Name=$_.Groups['name'].Value 
                Type=$type
            }
        }

        [PSCustomObject]@{
            Title=$title
            Components=$items
        }
    }

    #$caps | fl

    $caps | ForEach-Object {
        $title = $_.Title
        Write-Output "# $title"
        $_.Components | Group-Object -Property type | ForEach-Object {
            $type = $_.Name
            Write-Output "`t# $type"
            $_.Group | ForEach-Object {
                $id = $_.Id
                Write-Output "`t`t'$id',"
            }
        }
    }
}
$type = Get-VSType
Get-VisualStudioPackages $type | Out-File packages.txt
Write-Output "[$type] components saved into packages.txt"