[string]$username = 'mohcine'
[string]$password = 'efrei01'

# On stock les login et mot de passes
$secureString = $password | ConvertTo-SecureString -AsPlainText -Force 
$credentials = New-Object System.Management.Automation.PSCredential -ArgumentList $username, $secureString

$credentials