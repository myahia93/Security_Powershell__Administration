# Scripts PowerShell

Ce repo contient plusieurs scripts PowerShell pour automatiser diverses tâches de sécurité windows.

## storeCredentials.ps1

Ce script permet de stocker les informations d'identification (nom d'utilisateur et mot de passe) dans un objet `PSCredential`. Utile pour automatiser les tâches nécessitant une authentification.

## checkUpdate.ps1

Ce script parcourt une liste d'ordinateurs et vérifie si une mise à jour de sécurité spécifique est installée sur chaque poste.

## servicesState.ps1

Ce script génère un rapport HTML affichant l'état des services du système. Les services en cours d'exécution sont mis en surbrillance en vert, tandis que ceux arrêtés sont en surbrillance en rouge.

## wifi.ps1

Le script `wifi.ps1` récupère et affiche les profils Wi-Fi enregistrés sur l'ordinateur, y compris les clés de sécurité. Très utile lors de la perte du mot de passe Wi-Fi
