<# 
    Permet de parcourir une liste de noms de PC, puis de vérifier si une mise à jour de sécurité donnée
    est installée sur le poste 
#>

#On vérifie si le fichier existe, sinon on le crée
if (!(Test-Path ".\postes-non-maj.txt")) {
    New-Item -Path '.\postes-non-maj.txt' -ItemType File
}

#Ma liste de PCs (ici je met 2 fois le même car je n'ai qu'un PC)
$computers = @("****TO_BE_DEFINED****", "****TO_BE_DEFINED****")

$hotfix = Read-Host "Hotfix ID " 

foreach ($pc in $computers) {
    $updateExist = Get-Hotfix -ComputerName $pc -Id $hotfix
    if ($null -eq $updateExist) {
        Add-Content .\postes-non-maj.txt -Value $pc
    }
}