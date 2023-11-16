$wifis = netsh wlan show profile | select-string "les";
foreach ($wifi in $wifis) {
    [string]$s = $wifi
    $t = $s.Split(":")[1].Trim()
    $prof = netsh wlan show profile $t key=clear | select-string "du SSID",
    "contenu"
    $prof
}