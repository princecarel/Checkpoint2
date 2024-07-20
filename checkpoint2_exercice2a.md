# Q.2.1 Transfert des fichiers du serveur vers le client :

## Connectez-vous aux deux VM via VirtualBox :

1. Démarrez les VM Checkpoint2-SRVWIN2022 et Checkpoint2-CLIWIN10 dans VirtualBox.

## Accédez au dossier C:\Scripts sur le serveur :

1. Connectez-vous en tant qu'Administrator sur le serveur WINSERV.
2. Ouvrez l'Explorateur de fichiers et naviguez vers C:\Scripts.

## Compressez le dossier C:\Scripts :

1. Cliquez avec le bouton droit sur le dossier C:\Scripts.
2. Sélectionnez Envoyer vers > Dossier compressé.

## Transférez le fichier compressé au client via une clé USB virtuelle :

1. Dans VirtualBox, allez dans les paramètres de la VM Checkpoint2-SRVWIN2022.
2. Sélectionnez Périphériques > Lecteur USB et ajoutez une clé USB virtuelle.
3. Copiez le fichier compressé sur la clé USB virtuelle.

## Montez la clé USB virtuelle sur le client :

1. Connectez-vous en tant qu'Administrateur sur le client CLIENT1.
2. Montez la clé USB virtuelle dans les paramètres de la VM Checkpoint2-CLIWIN10.
3. Copiez le fichier compressé de la clé USB virtuelle vers C:\.

## Décompressez le fichier sur le client :

1. Décompressez le fichier pour obtenir le dossier C:\Scripts avec les fichiers nécessaires.

# Q.2.1 Transfert des fichiers du serveur vers le client :

## Connectez-vous aux deux VM via VirtualBox :

1. Démarrez les VM Checkpoint2-SRVWIN2022 et Checkpoint2-CLIWIN10 dans VirtualBox.

## Accédez au dossier C:\Scripts sur le serveur :

1. Connectez-vous en tant qu'Administrator sur le serveur WINSERV.
2. Ouvrez l'Explorateur de fichiers et naviguez vers C:\Scripts.

## Compressez le dossier C:\Scripts :

1. Cliquez avec le bouton droit sur le dossier C:\Scripts.
2. Sélectionnez Envoyer vers > Dossier compressé.

## Transférez le fichier compressé au client via une clé USB virtuelle :

1. Dans VirtualBox, allez dans les paramètres de la VM Checkpoint2-SRVWIN2022.
2. Sélectionnez Périphériques > Lecteur USB et ajoutez une clé USB virtuelle.
3. Copiez le fichier compressé sur la clé USB virtuelle.

## Montez la clé USB virtuelle sur le client :

1. Connectez-vous en tant qu'Administrateur sur le client CLIENT1.
2. Montez la clé USB virtuelle dans les paramètres de la VM Checkpoint2-CLIWIN10.
3. Copiez le fichier compressé de la clé USB virtuelle vers C:\.

## Décompressez le fichier sur le client :

1. Décompressez le fichier pour obtenir le dossier C:\Scripts avec les fichiers nécessaires.


![image](https://github.com/user-attachments/assets/0318dfdc-7b88-40ac-bdd6-aa16f6cea7c2)

# Q2.1 Exécution de scripts PowerShell

L'exécution de script est restreinte par défaut. Pour vérifier la politique d'exécution actuelle, tapez :

```powershell
Get-ExecutionPolicy 
```

Pour autoriser l'exécution de scripts, utilisez l'une des commandes suivantes en fonction de vos besoins :

Pour autoriser tous les scripts :

```powershell
Set-ExecutionPolicy Unrestricted
```

Pour autoriser uniquement les scripts signés :

```powershell
Set-ExecutionPolicy RemoteSigned
```

Le script `Main.ps1` doit contenir cette ligne pour exécuter `AddLocalUsers.ps1` avec des privilèges élevés :

```powershell
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSScriptRoot\AddLocalUsers.ps1`"" -Verb RunAs
```

![image](https://github.com/user-attachments/assets/15d09d1d-e2cb-4ced-9aa6-c0d3ebda8740)



## Q.2.3 Option -Verb RunAs :

Cette option permet de lancer le processus avec des privilèges d'administrateur. Elle est essentielle pour les actions nécessitant des droits élevés, comme la création de comptes utilisateurs.

## Q.2.4 Option -WindowsStyle Maximized :

Cette option permet de lancer la fenêtre PowerShell en mode maximisé. Cela peut être utile pour visualiser toutes les sorties du script sans être limité par la taille de la fenêtre.
   
