$title = "<h1>Etat des services du syteme</h1>"

$services = Get-Service | Select-Object Name, DisplayName, Status | ConvertTo-Html -PreContent $title `
| ForEach-Object {if($_ -like "*<td>Running</td>*"){$_ -replace "<tr>", "<tr bgcolor=#00ff00>"} `
elseif($_ -like "*<td>Stopped</td>*" ){$_ -replace "<tr>", "<tr bgcolor=#ff0000>"}  else{$_}}

$services | Out-File .\report.html


