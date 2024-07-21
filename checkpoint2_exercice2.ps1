# Affiche un message indiquant le début du script
Write-Host "--- Début du script ---"

# Fonction pour générer un mot de passe aléatoire
Function Random-Password ($length = 12) # La longueur par défaut du mot de passe est de 12 caractères
{
    # Définir les caractères possibles pour le mot de passe
    $punc = 46..46
    $digits = 48..57
    $letters = 65..90 + 97..122

    # Générer un mot de passe aléatoire en sélectionnant des caractères parmi les listes définies
    $password = get-random -count $length -input ($punc + $digits + $letters) |`
        ForEach -begin { $aa = $null } -process {$aa += [char]$_} -end {$aa}
    Return $password.ToString() # Retourner le mot de passe généré
}

# Fonction pour gérer les accents et les majuscules dans les noms d'utilisateurs
Function ManageAccentsAndCapitalLetters
{
    param ([String]$String)
    
    # Remplacer les caractères accentués par leurs équivalents non accentués
    $StringWithoutAccent = $String -replace '[éèêë]', 'e' -replace '[àâä]', 'a' -replace '[îï]', 'i' -replace '[ôö]', 'o' -replace '[ùûü]', 'u'
    # Convertir la chaîne en minuscules
    $StringWithoutAccentAndCapitalLetters = $StringWithoutAccent.ToLower()
    # Retourner la chaîne modifiée
    $StringWithoutAccentAndCapitalLetters
}

# Fonction pour écrire des messages dans un fichier de log
Function Write-Log {
    param (
        [string]$message, # Le message à enregistrer
        [string]$logFile = "C:\Scripts\Log.log" # Le chemin du fichier de log
    )
    # Obtenir la date et l'heure actuelles
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    # Créer le message de log avec un horodatage
    $logMessage = "$timestamp - $message"
    # Ajouter le message de log au fichier
    Add-Content -Path $logFile -Value $logMessage
}

# Définir le chemin des fichiers
$Path = "C:\Scripts"
$CsvFile = "$Path\Users.csv" # Chemin du fichier CSV contenant les utilisateurs
$LogFile = "$Path\Log.log" # Chemin du fichier de log

# Lire toutes les lignes du fichier CSV
$lines = Get-Content -Path $CsvFile

# Définir l'en-tête attendu du fichier CSV
$header = "prenom;nom;description;fonction"

# Parcourir chaque ligne du fichier CSV
foreach ($line in $lines) {
    # Vérifier si la ligne est l'en-tête
    if ($line -eq $header) {
        continue # Ignorer l'en-tête
    }

    # Convertir la ligne en objet utilisateur
    $User = $line | ConvertFrom-Csv -Delimiter ";"

    # Gérer les accents et les majuscules dans les prénoms et noms
    $Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    $Nom = ManageAccentsAndCapitalLetters -String $User.nom
    # Combiner le prénom et le nom pour créer le nom d'utilisateur
    $Name = "$Prenom.$Nom"
    
    # Vérifier si l'utilisateur n'existe pas déjà
    If (-not(Get-LocalUser -Name $Name -ErrorAction SilentlyContinue))
    {
        # Générer un mot de passe aléatoire
        $Pass = Random-Password
        # Convertir le mot de passe en une chaîne sécurisée
        $Password = (ConvertTo-secureString $Pass -AsPlainText -Force)
        # Créer une description pour l'utilisateur
        $Description = "$($User.description) - $($User.fonction)"
        # Définir les informations de l'utilisateur
        $UserInfo = @{
            Name                 = $Name
            FullName             = $Name
            Password             = $Password
            Description          = $Description
            AccountNeverExpires  = $true
            PasswordNeverExpires = $true
        }

        # Créer le nouvel utilisateur local
        New-LocalUser @UserInfo
        # Ajouter l'utilisateur au groupe local "Users"
        Add-LocalGroupMember -Group "Users" -Member $Name
        # Afficher un message indiquant que l'utilisateur a été créé
        Write-Host "L'utilisateur $Name a été créé avec le mot de passe : $Pass et la description : $Description"
        # Enregistrer un message de log indiquant que l'utilisateur a été créé
        Write-Log -message "L'utilisateur $Name a été créé avec le mot de passe : $Pass et la description : $Description" -logFile $LogFile
    }
    else {
        # Afficher un message indiquant que l'utilisateur existe déjà
        Write-Host "L'utilisateur $Name existe déjà."
        # Enregistrer un message de log indiquant que l'utilisateur existe déjà
        Write-Log -message "L'utilisateur $Name existe déjà." -logFile $LogFile
    }
}

# Mettre le script en pause pour permettre à l'utilisateur de voir les messages
pause
# Afficher un message indiquant la fin du script
Write-Host "--- Fin du script ---"
# Mettre le script en pause pour permettre à l'utilisateur de voir les messages
pause

